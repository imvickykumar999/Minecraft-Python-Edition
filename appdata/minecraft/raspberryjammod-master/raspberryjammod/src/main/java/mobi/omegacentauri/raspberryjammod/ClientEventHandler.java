package mobi.omegacentauri.raspberryjammod;

import java.beans.EventSetDescriptor;
import java.io.IOException;
import java.lang.reflect.Field;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import net.minecraft.block.Block;
import net.minecraft.block.state.IBlockState;
import net.minecraft.client.Minecraft;
import net.minecraft.client.entity.EntityPlayerSP;
import net.minecraft.client.gui.GuiChat;
import net.minecraft.client.gui.GuiScreen;
import net.minecraft.command.ICommand;
import net.minecraft.entity.Entity;
import net.minecraft.event.ClickEvent;
import net.minecraft.item.ItemStack;
import net.minecraft.item.ItemSword;
import net.minecraft.nbt.NBTTagCompound;
import net.minecraft.potion.Potion;
import net.minecraft.potion.PotionEffect;
import net.minecraft.server.MinecraftServer;
import net.minecraft.tileentity.TileEntity;
import net.minecraft.util.BlockPos;
import net.minecraft.util.EnumFacing;
import net.minecraft.util.IChatComponent;
import net.minecraft.world.EnumDifficulty;
import net.minecraft.world.World;
import net.minecraftforge.client.ClientCommandHandler;
import net.minecraftforge.client.event.MouseEvent;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.event.CommandEvent;
import net.minecraftforge.event.ServerChatEvent;
import net.minecraftforge.event.entity.player.PlayerInteractEvent;
import net.minecraftforge.event.terraingen.InitMapGenEvent;
import net.minecraftforge.event.world.WorldEvent;
import net.minecraftforge.fml.common.FMLCommonHandler;
import net.minecraftforge.fml.common.eventhandler.Event;
import net.minecraftforge.fml.common.eventhandler.SubscribeEvent;
import net.minecraftforge.fml.common.gameevent.InputEvent;
import net.minecraftforge.fml.common.gameevent.PlayerEvent;
import net.minecraftforge.fml.common.gameevent.TickEvent;
import net.minecraftforge.fml.common.network.FMLNetworkEvent;
import net.minecraftforge.fml.relauncher.Side;
import net.minecraftforge.fml.relauncher.SideOnly;

public class ClientEventHandler {
	private volatile boolean nightVision = false;
	private int clientTickCount = 0;
	private MCEventHandlerClientOnly apiEventHandler = null;
	private APIServer apiServer = null;
//	private boolean registeredCommands = false;

	@SubscribeEvent
	@SideOnly(Side.CLIENT)
	public void onClientTick(TickEvent.ClientTickEvent event) {
		if (nightVision && clientTickCount % 1024 == 0) {
			Minecraft mc = Minecraft.getMinecraft();
			if (mc != null) {
				EntityPlayerSP player = Minecraft.getMinecraft().thePlayer;
				
				if (player != null) {
					player.addPotionEffect(new PotionEffect(Potion.nightVision.id, 4096));
				}
			}
		}
		clientTickCount++;
	} 

	public void setNightVision(boolean b) {
		nightVision = b;
	}

	public boolean getNightVision() {
		return nightVision;
	}

	@SideOnly(Side.CLIENT)
	@SubscribeEvent
	public void onClientConnectedToServer(FMLNetworkEvent.ClientConnectedToServerEvent event) {
		try {
			Object address = event.manager.getRemoteAddress();
			if (address instanceof InetSocketAddress) {
				RaspberryJamMod.serverAddress = ((InetSocketAddress) address).getAddress().getHostAddress();
				System.out.println("Server address "+RaspberryJamMod.serverAddress);
			}
			else {
				System.out.println("No IP address");
			}
		} catch(Exception e) {
			RaspberryJamMod.serverAddress = null;
		}
	}


	@SideOnly(Side.CLIENT)
	@SubscribeEvent
	public void onWorldUnloaded(WorldEvent.Unload event) {
		if (! RaspberryJamMod.clientOnlyAPI)
			return;

		System.out.println("Closing world: "+event.world);
		
		closeAPI();
	}	
	
	@SideOnly(Side.CLIENT)
	@SubscribeEvent
	public void onWorldLoaded(WorldEvent.Load event) {
		RaspberryJamMod.synchronizeConfig();
		System.out.println("Loading world: "+event.world);

		if (! RaspberryJamMod.clientOnlyAPI)
			return;
			
//		if (! registeredCommands) {
		System.out.println("Registering commands");
			RaspberryJamMod.scriptExternalCommands = new ScriptExternalCommand[] {
					new PythonExternalCommand(true),
					new AddPythonExternalCommand(true)
			};
			for (ScriptExternalCommand c : RaspberryJamMod.scriptExternalCommands) {
				net.minecraftforge.client.ClientCommandHandler.instance.registerCommand(c);
			}
//		}

		if (apiEventHandler == null) {
            apiEventHandler = new MCEventHandlerClientOnly();
			FMLCommonHandler.instance().bus().register(apiEventHandler);
			MinecraftForge.EVENT_BUS.register(apiEventHandler);
		}

        if (apiServer == null)
			try {
				System.out.println("RaspberryJamMod client only API");
				RaspberryJamMod.apiActive = true;
				if (apiServer == null) {
					RaspberryJamMod.currentPortNumber = -1;
					apiServer = new APIServer(apiEventHandler, RaspberryJamMod.portNumber, RaspberryJamMod.searchForPort ? 65535 : RaspberryJamMod.portNumber, 
							RaspberryJamMod.wsPort,
							true);
					RaspberryJamMod.currentPortNumber = apiServer.getPortNumber();
	
					new Thread(new Runnable() {
						@Override
						public void run() {
							try {
								apiServer.communicate();
							} catch(IOException e) {
								System.out.println("RaspberryJamMod error "+e);
							}
							finally {
								closeAPI();
							}
						}
					}).start();
				}
			}
			catch (Exception e) {}
	}

	public void closeAPI() {
		RaspberryJamMod.closeAllScripts();
		if (RaspberryJamMod.scriptExternalCommands != null) {
			for (ICommand c : RaspberryJamMod.scriptExternalCommands) {
				System.out.println("Unregistering "+c.getClass());
				RaspberryJamMod.unregisterCommand(net.minecraftforge.client.ClientCommandHandler.instance,c);
			}
			RaspberryJamMod.scriptExternalCommands = null;
		}
		RaspberryJamMod.apiActive = false;
		if (apiEventHandler != null) {
            MinecraftForge.EVENT_BUS.unregister(apiEventHandler);
			FMLCommonHandler.instance().bus().unregister(apiEventHandler);
            apiEventHandler = null;
		}
		if (apiServer != null) {
			apiServer.close();
			apiServer = null;
		}
	}
}
