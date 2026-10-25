require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74077Trigger_7407703FINISH = class("Q74077Trigger_7407703FINISH", GadgetActorProxy)
Q74077Trigger_7407703FINISH.defaultAlias = "Q74077Trigger_7407703FINISH"
local Q74077ClientConfig = require("Quest/Client/Q74077ClientConfig")

local this
local subIDs = Q74077ClientConfig.SubIDs
local npcs = Q74077ClientConfig.Npcs
local datas = Q74077ClientConfig.Datas

function Q74077Trigger_7407703FINISH:OnPostDataPrepare()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407703FINISH] OnPostDataPrepare")
    this = self
end

function Q74077Trigger_7407703FINISH:OnPostComponentPrepare()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407703FINISH] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(25, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74077Trigger_7407703FINISH:TriggerIn()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407703FINISH] TriggerIn")
    actorUtils.FinishQuestID(false, 7407703)
    this:DestroySelf()
end

function Q74077Trigger_7407703FINISH:PreTriggerIn()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407703FINISH] PreTriggerIn")
end

function Q74077Trigger_7407703FINISH:LightUpTriggerIn()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407703FINISH] LightUpTriggerIn")
end

function Q74077Trigger_7407703FINISH:TriggerOut()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407703FINISH] TriggerOut")
end

return Q74077Trigger_7407703FINISH
