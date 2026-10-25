require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74078Trigger_7407821FINISH = class("Q74078Trigger_7407821FINISH", GadgetActorProxy)
Q74078Trigger_7407821FINISH.defaultAlias = "Q74078Trigger_7407821FINISH"
local Q74078ClientConfig = require("Quest/Client/Q74078ClientConfig")

local this
local subIDs = Q74078ClientConfig.SubIDs
local npcs = Q74078ClientConfig.Npcs
local datas = Q74078ClientConfig.Datas

function Q74078Trigger_7407821FINISH:OnPostDataPrepare()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407821FINISH] OnPostDataPrepare")
    this = self
end

function Q74078Trigger_7407821FINISH:OnPostComponentPrepare()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407821FINISH] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74078Trigger_7407821FINISH:TriggerIn()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407821FINISH] TriggerIn")
    actorUtils.FinishQuestID(false, 7407821)
    this:DestroySelf()
end

function Q74078Trigger_7407821FINISH:PreTriggerIn()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407821FINISH] PreTriggerIn")
end

function Q74078Trigger_7407821FINISH:LightUpTriggerIn()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407821FINISH] LightUpTriggerIn")
end

function Q74078Trigger_7407821FINISH:TriggerOut()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407821FINISH] TriggerOut")
end

return Q74078Trigger_7407821FINISH
