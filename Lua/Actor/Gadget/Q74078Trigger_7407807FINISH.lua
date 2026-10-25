require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74078Trigger_7407807FINISH = class("Q74078Trigger_7407807FINISH", GadgetActorProxy)
Q74078Trigger_7407807FINISH.defaultAlias = "Q74078Trigger_7407807FINISH"
local Q74078ClientConfig = require("Quest/Client/Q74078ClientConfig")

local this
local subIDs = Q74078ClientConfig.SubIDs
local npcs = Q74078ClientConfig.Npcs
local datas = Q74078ClientConfig.Datas

function Q74078Trigger_7407807FINISH:OnPostDataPrepare()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407807FINISH] OnPostDataPrepare")
    this = self
end

function Q74078Trigger_7407807FINISH:OnPostComponentPrepare()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407807FINISH] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74078Trigger_7407807FINISH:TriggerIn()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407807FINISH] TriggerIn")
    actorUtils.FinishQuestID(false, 7407807)
    this:DestroySelf()
end

function Q74078Trigger_7407807FINISH:PreTriggerIn()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407807FINISH] PreTriggerIn")
end

function Q74078Trigger_7407807FINISH:LightUpTriggerIn()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407807FINISH] LightUpTriggerIn")
end

function Q74078Trigger_7407807FINISH:TriggerOut()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407807FINISH] TriggerOut")
end

return Q74078Trigger_7407807FINISH
