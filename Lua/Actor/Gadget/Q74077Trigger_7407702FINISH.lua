require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74077Trigger_7407702FINISH = class("Q74077Trigger_7407702FINISH", GadgetActorProxy)
Q74077Trigger_7407702FINISH.defaultAlias = "Q74077Trigger_7407702FINISH"
local Q74077ClientConfig = require("Quest/Client/Q74077ClientConfig")

local this
local subIDs = Q74077ClientConfig.SubIDs
local npcs = Q74077ClientConfig.Npcs
local datas = Q74077ClientConfig.Datas

function Q74077Trigger_7407702FINISH:OnPostDataPrepare()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407702FINISH] OnPostDataPrepare")
    this = self
end

function Q74077Trigger_7407702FINISH:OnPostComponentPrepare()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407702FINISH] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 40, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74077Trigger_7407702FINISH:TriggerIn()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407702FINISH] TriggerIn")
    actorUtils.FinishQuestID(false, 7407702)
    this:DestroySelf()
end

function Q74077Trigger_7407702FINISH:PreTriggerIn()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407702FINISH] PreTriggerIn")
end

function Q74077Trigger_7407702FINISH:LightUpTriggerIn()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407702FINISH] LightUpTriggerIn")
end

function Q74077Trigger_7407702FINISH:TriggerOut()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407702FINISH] TriggerOut")
end

return Q74077Trigger_7407702FINISH
