require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500020Baodi = class("Q500020Baodi", GadgetActorProxy)
Q500020Baodi.defaultAlias = "Q500020Baodi"
local Q5000ClientConfig = require("Quest/Client/Q5000ClientConfig")

local this
local subIDs = Q5000ClientConfig.SubIDs
local datas = Q5000ClientConfig.Datas
local npcs = Q5000ClientConfig.Npcs
local points = Q5000ClientConfig.Points

function Q500020Baodi:OnPostDataPrepare()
    print("Q500020Baodi - OnPostDataPrepare")
    this = self
end

function Q500020Baodi:OnPostComponentPrepare()
    print("Q500020Baodi - OnPostComponentPrepare")
    this:AddNpcCubeShapeTrigger(5000, datas.NPCList, LuaLogicType.LUA_LOGIC_OR, 25, 45, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, nil, nil)
end

function Q500020Baodi:TriggerIn()
    print("Q500020Baodi - TriggerIn")
    actorMgr:GetActor("5000"):GetQuestNpcActor(npcs.Npc1086.alias, 5000):SetPosAndTurnTo({x = -1328.3, y = 163.7, z = 7633.4}, {x = 0, y = -100, z = 0}, false)
end

function Q500020Baodi:PreTriggerIn()
    print("Q500020Baodi - PreTriggerIn")
end

function Q500020Baodi:LightUpTriggerIn()
    print("Q500020Baodi - LightUpTriggerIn")
end

function Q500020Baodi:TriggerOut()
    print("Q500020Baodi - TriggerOut")
end

return Q500020Baodi
