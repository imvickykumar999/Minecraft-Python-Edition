package mobi.omegacentauri.raspberryjammod;

import java.beans.EventSetDescriptor;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;

import net.minecraft.block.Block;
import net.minecraft.block.state.IBlockState;
import net.minecraft.client.Minecraft;
import net.minecraft.client.entity.EntityPlayerSP;
import net.minecraft.client.gui.GuiChat;
import net.minecraft.client.gui.GuiScreen;
import net.minecraft.entity.Entity;
import net.minecraft.entity.player.EntityPlayer;
import net.minecraft.entity.player.EntityPlayerMP;
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
import net.minecraft.util.Vec3i;
import net.minecraft.world.EnumDifficulty;
import net.minecraft.world.World;
import net.minecraftforge.client.event.MouseEvent;
import net.minecraftforge.event.CommandEvent;
import net.minecraftforge.event.ServerChatEvent;
import net.minecraftforge.event.entity.player.PlayerInteractEvent;
import net.minecraftforge.event.terraingen.InitMapGenEvent;
import net.minecraftforge.fml.common.FMLCommonHandler;
import net.minecraftforge.fml.common.eventhandler.Event;
import net.minecraftforge.fml.common.eventhandler.SubscribeEvent;
import net.minecraftforge.fml.common.gameevent.InputEvent;
import net.minecraftforge.fml.common.gameevent.TickEvent;
import net.minecraftforge.fml.relauncher.Side;

abstract public class MCEventHandler {
	protected List<ServerAction> serverActionQueue = new ArrayList<ServerAction>();		
	volatile boolean stopChanges = false;
	protected volatile boolean pause = false;
	private ServerChatEvent chatEvents;
	protected boolean doRemote;
	protected List<APIHandler> apiHandlers = new ArrayList<APIHandler>(); 
	
	public MCEventHandler() {
	}

	public void setStopChanges(boolean stopChanges) {
		this.stopChanges = stopChanges;
	}
	
//	@SubscribeEvent
//	public void onInitMapGenEvent(InitMapGenEvent event) {
//		System.out.println("Init map gen");
//		MinecraftServer.getServer().setDifficultyForAllWorlds(EnumDifficulty.PEACEFUL);
//	}
	
//	@SubscribeEvent
//    public void onKeyInput(InputEvent.KeyInputEvent event) {
//        if(KeyBindings.superchat.isPressed()) {
//            System.out.println("superchat");
//            Minecraft.getMinecraft().displayGuiScreen(new MyChat());
//        }
//    }
	
	@SubscribeEvent
	public void onPlayerInteractEvent(PlayerInteractEvent event) {
		if (event.entityPlayer == null || event.entityPlayer.getEntityWorld().isRemote != RaspberryJamMod.clientOnlyAPI )
			return;
		
		for (APIHandler apiHandler : apiHandlers)
			apiHandler.onClick(event);		
	}
	
	abstract protected World[] getWorlds();

	public void queueServerAction(ServerAction s) {
		synchronized(serverActionQueue) {
			serverActionQueue.add(s);
		}
	}
	
	public void runQueue() {
		if (!pause) {
			synchronized(serverActionQueue) {
				for (ServerAction entry: serverActionQueue) {
					if (! RaspberryJamMod.apiActive)
						break;
					entry.execute();
				}
				serverActionQueue.clear();
			}
		}
		else if (! RaspberryJamMod.apiActive) {
			synchronized(serverActionQueue) {
				serverActionQueue.clear();
			}
		}
	}

	public BlockState getBlockState(Location pos) {
		int x = pos.getX();
		int y = pos.getY();
		int z = pos.getZ();
	
		synchronized(serverActionQueue) {
			for (int i = serverActionQueue.size() - 1 ; i >= 0 ; i--) {
				ServerAction entry = serverActionQueue.get(i);
				if (entry.contains(pos.world,x,y,z)) {
					return entry.getBlockState();
				}
			}
		}
		
		return new BlockState(pos.world.getBlockState(pos));
	}

	public String describeBlockState(Location pos) {
		int x = pos.getX();
		int y = pos.getY();
		int z = pos.getZ();
	
		synchronized(serverActionQueue) {
			for (int i = serverActionQueue.size() - 1 ; i >= 0 ; i--) {
				ServerAction entry = serverActionQueue.get(i);
				if (entry.contains(pos.world,x,y,z)) {
					return entry.describe();
				}
			}
		}

		IBlockState state = pos.world.getBlockState(pos);
		Block block = state.getBlock();
		int meta = block.getMetaFromState(state);
		String describe = ""+block.getIdFromBlock(block)+","+meta+",";

		TileEntity tileEntity = pos.world.getTileEntity(pos);
		if (tileEntity == null)
			return describe;
		NBTTagCompound tag = new NBTTagCompound();
		tileEntity.writeToNBT(tag);
		SetBlockNBT.scrubNBT(tag);
		return describe+tag.toString();
	}

	public int getBlockId(Location pos) {
		int x = pos.getX();
		int y = pos.getY();
		int z = pos.getZ();
	
		synchronized(serverActionQueue) {
			for (int i = serverActionQueue.size() - 1 ; i >= 0 ; i--) {
				ServerAction entry = serverActionQueue.get(i);
				if (entry.contains(pos.world, x,y,z)) {
					return (int)entry.getBlockId();
				}
			}
		}
		
		return Block.getIdFromBlock(pos.world.getBlockState(pos).getBlock());
	}

	public void setPause(boolean b) {
		pause = b;
	}

	public void unregisterAPIHandler(APIHandler h) {
		apiHandlers.remove(h);
	}

	public void registerAPIHandler(APIHandler h) {
		apiHandlers.add(h);
	}
}
