require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601017Trigger_Enter = class("Q601017Trigger_Enter", GadgetActorProxy)
Q601017Trigger_Enter.defaultAlias = "Q601017Trigger_Enter"
local Q6010ClientConfig = require("Quest/Client/Q6010ClientConfig")

local this
local subIDs = Q6010ClientConfig.SubIDs
local datas = Q6010ClientConfig.Datas
local npcs = Q6010ClientConfig.Npcs
local points = Q6010ClientConfig.Points

function Q601017Trigger_Enter:OnPostDataPrepare()
    print("Q601017Trigger_Enter - OnPostDataPrepare")
    this = self
end

function Q601017Trigger_Enter:OnPostComponentPrepare()
    print("Q601017Trigger_Enter - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6010)
end

function Q601017Trigger_Enter:TriggerIn()
    print("Q601017Trigger_Enter - TriggerIn")
    actorUtils.FinishQuestID(false, 601017)
    this:DestroySelf()
end

function Q601017Trigger_Enter:PreTriggerIn()
    print("Q601017Trigger_Enter - PreTriggerIn")
end

function Q601017Trigger_Enter:LightUpTriggerIn()
    print("Q601017Trigger_Enter - LightUpTriggerIn")
end

function Q601017Trigger_Enter:TriggerOut()
    print("Q601017Trigger_Enter - TriggerOut")
end

return Q601017Trigger_Enter
