require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400009TriggerDog3 = class("Q7400009TriggerDog3", GadgetActorProxy)
Q7400009TriggerDog3.defaultAlias = "Q7400009TriggerDog3"
local Q74000ClientConfig = require("Quest/Client/Q74000ClientConfig")

local this
local subIDs = Q74000ClientConfig.SubIDs
local npcs = Q74000ClientConfig.Npcs
local points = Q74000ClientConfig.Points
local datas = Q74000ClientConfig.Datas

function Q7400009TriggerDog3:OnPostDataPrepare()
    print("[MainId: 74000][Trigger: Q7400009TriggerDog3] OnPostDataPrepare")
    this = self
end

function Q7400009TriggerDog3:OnPostComponentPrepare()
    print("[MainId: 74000][Trigger: Q7400009TriggerDog3] OnPostComponentPrepare")
    this:AddNpcCylinderShapeTrigger(74000, datas.npcAliasListDog3_20980, LuaLogicType.LUA_LOGIC_AND, 6, 2.995108, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7400009TriggerDog3:TriggerIn()
    print("[MainId: 74000][Trigger: Q7400009TriggerDog3] TriggerIn")
    actorUtils.FinishQuestID(false, 7400009)
    this:DestroySelf()
end

function Q7400009TriggerDog3:PreTriggerIn()
    print("[MainId: 74000][Trigger: Q7400009TriggerDog3] PreTriggerIn")
end

function Q7400009TriggerDog3:LightUpTriggerIn()
    print("[MainId: 74000][Trigger: Q7400009TriggerDog3] LightUpTriggerIn")
end

function Q7400009TriggerDog3:TriggerOut()
    print("[MainId: 74000][Trigger: Q7400009TriggerDog3] TriggerOut")
end

return Q7400009TriggerDog3
