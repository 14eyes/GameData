require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400008TriggerDog2 = class("Q7400008TriggerDog2", GadgetActorProxy)
Q7400008TriggerDog2.defaultAlias = "Q7400008TriggerDog2"
local Q74000ClientConfig = require("Quest/Client/Q74000ClientConfig")

local this
local subIDs = Q74000ClientConfig.SubIDs
local npcs = Q74000ClientConfig.Npcs
local points = Q74000ClientConfig.Points
local datas = Q74000ClientConfig.Datas

function Q7400008TriggerDog2:OnPostDataPrepare()
    print("[MainId: 74000][Trigger: Q7400008TriggerDog2] OnPostDataPrepare")
    this = self
end

function Q7400008TriggerDog2:OnPostComponentPrepare()
    print("[MainId: 74000][Trigger: Q7400008TriggerDog2] OnPostComponentPrepare")
    this:AddNpcCylinderShapeTrigger(74000, datas.npcAliasListDog2_20981, LuaLogicType.LUA_LOGIC_AND, 6, 6, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7400008TriggerDog2:TriggerIn()
    print("[MainId: 74000][Trigger: Q7400008TriggerDog2] TriggerIn")
    actorUtils.FinishQuestID(false, 7400008)
    this:DestroySelf()
end

function Q7400008TriggerDog2:PreTriggerIn()
    print("[MainId: 74000][Trigger: Q7400008TriggerDog2] PreTriggerIn")
end

function Q7400008TriggerDog2:LightUpTriggerIn()
    print("[MainId: 74000][Trigger: Q7400008TriggerDog2] LightUpTriggerIn")
end

function Q7400008TriggerDog2:TriggerOut()
    print("[MainId: 74000][Trigger: Q7400008TriggerDog2] TriggerOut")
end

return Q7400008TriggerDog2
