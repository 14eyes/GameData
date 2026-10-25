require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500004Baodi = class("Q500004Baodi", GadgetActorProxy)
Q500004Baodi.defaultAlias = "Q500004Baodi"
local Q5000ClientConfig = require("Quest/Client/Q5000ClientConfig")

local this
local subIDs = Q5000ClientConfig.SubIDs
local datas = Q5000ClientConfig.Datas
local npcs = Q5000ClientConfig.Npcs
local points = Q5000ClientConfig.Points

function Q500004Baodi:OnPostDataPrepare()
    print("Q500004Baodi - OnPostDataPrepare")
    this = self
end

function Q500004Baodi:OnPostComponentPrepare()
    print("Q500004Baodi - OnPostComponentPrepare")
    this:AddNpcCubeShapeTrigger(5000, datas.NPCList, LuaLogicType.LUA_LOGIC_AND, 20, 40, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil)
end

function Q500004Baodi:TriggerIn()
    print("Q500004Baodi - TriggerIn")
    actorMgr:GetActor("5000"):GetQuestNpcActor(npcs.Npc1086.alias, 5000):SetPosAndTurnTo({x = -1373.2, y = 144.3, z = 7578.9}, {x = 0, y = 100, z = 0}, false)
end

function Q500004Baodi:PreTriggerIn()
    print("Q500004Baodi - PreTriggerIn")
end

function Q500004Baodi:LightUpTriggerIn()
    print("Q500004Baodi - LightUpTriggerIn")
end

function Q500004Baodi:TriggerOut()
    print("Q500004Baodi - TriggerOut")
end

return Q500004Baodi
