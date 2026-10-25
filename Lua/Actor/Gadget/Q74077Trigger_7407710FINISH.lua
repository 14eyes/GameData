require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74077Trigger_7407710FINISH = class("Q74077Trigger_7407710FINISH", GadgetActorProxy)
Q74077Trigger_7407710FINISH.defaultAlias = "Q74077Trigger_7407710FINISH"
local Q74077ClientConfig = require("Quest/Client/Q74077ClientConfig")

local this
local subIDs = Q74077ClientConfig.SubIDs
local npcs = Q74077ClientConfig.Npcs
local datas = Q74077ClientConfig.Datas

function Q74077Trigger_7407710FINISH:OnPostDataPrepare()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407710FINISH] OnPostDataPrepare")
    this = self
end

function Q74077Trigger_7407710FINISH:OnPostComponentPrepare()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407710FINISH] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(25, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74077Trigger_7407710FINISH:TriggerIn()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407710FINISH] TriggerIn")
    actorUtils.FinishQuestID(false, 7407710)
    this:DestroySelf()
end

function Q74077Trigger_7407710FINISH:PreTriggerIn()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407710FINISH] PreTriggerIn")
end

function Q74077Trigger_7407710FINISH:LightUpTriggerIn()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407710FINISH] LightUpTriggerIn")
end

function Q74077Trigger_7407710FINISH:TriggerOut()
    print("[MainId: 74077][Trigger: Q74077Trigger_7407710FINISH] TriggerOut")
end

return Q74077Trigger_7407710FINISH
