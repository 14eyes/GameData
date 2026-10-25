require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400013TriggerDog5 = class("Q7400013TriggerDog5", GadgetActorProxy)
Q7400013TriggerDog5.defaultAlias = "Q7400013TriggerDog5"
local Q74000ClientConfig = require("Quest/Client/Q74000ClientConfig")

local this
local subIDs = Q74000ClientConfig.SubIDs
local npcs = Q74000ClientConfig.Npcs
local points = Q74000ClientConfig.Points
local datas = Q74000ClientConfig.Datas

function Q7400013TriggerDog5:OnPostDataPrepare()
    print("[MainId: 74000][Trigger: Q7400013TriggerDog5] OnPostDataPrepare")
    this = self
end

function Q7400013TriggerDog5:OnPostComponentPrepare()
    print("[MainId: 74000][Trigger: Q7400013TriggerDog5] OnPostComponentPrepare")
    this:AddNpcCubeShapeTrigger(74000, datas.npcAliasListDog5_20973, LuaLogicType.LUA_LOGIC_AND, 10, 10, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7400013TriggerDog5:TriggerIn()
    print("[MainId: 74000][Trigger: Q7400013TriggerDog5] TriggerIn")
    actorUtils.FinishQuestID(false, 7400013)
    this:DestroySelf()
end

function Q7400013TriggerDog5:PreTriggerIn()
    print("[MainId: 74000][Trigger: Q7400013TriggerDog5] PreTriggerIn")
end

function Q7400013TriggerDog5:LightUpTriggerIn()
    print("[MainId: 74000][Trigger: Q7400013TriggerDog5] LightUpTriggerIn")
end

function Q7400013TriggerDog5:TriggerOut()
    print("[MainId: 74000][Trigger: Q7400013TriggerDog5] TriggerOut")
end

return Q7400013TriggerDog5
