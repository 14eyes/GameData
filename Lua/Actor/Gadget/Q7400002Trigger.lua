require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400003TriggerDog1 = class("Q7400003TriggerDog1", GadgetActorProxy)
Q7400003TriggerDog1.defaultAlias = "Q7400003TriggerDog1"
local Q74000ClientConfig = require("Quest/Client/Q74000ClientConfig")

local v
local subIDs = Q74000ClientConfig.SubIDs
local npcs = Q74000ClientConfig.Npcs
local points = Q74000ClientConfig.Points
local datas = Q74000ClientConfig.Datas

function Q7400002Trigger.OnPostDataPrepare(arg1)
    print("OnPostDataPrepare")
    v = arg1
end

function Q7400002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    v:AddNpcCylinderShapeTrigger(74000, datas.npcAliasListDog1_21032, LuaLogicType.LUA_LOGIC_OR, 7, 6, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7400002Trigger.TriggerIn(arg1)
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7400003)
    v:DestroySelf()
end

function Q7400002Trigger.PreTriggerIn(arg1)
    print("PreTriggerIn")
end

function Q7400002Trigger.LightUpTriggerIn(arg1)
    print("LightUpTriggerIn")
end

function Q7400002Trigger.TriggerOut(arg1)
    print("TriggerOut")
end

return Q7400003TriggerDog1
