require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601114Trigger_Enter = class("Q601114Trigger_Enter", GadgetActorProxy)
Q601114Trigger_Enter.defaultAlias = "Q601114Trigger_Enter"
local Q6011ClientConfig = require("Quest/Client/Q6011ClientConfig")

local this
local subIDs = Q6011ClientConfig.SubIDs
local datas = Q6011ClientConfig.Datas
local npcs = Q6011ClientConfig.Npcs
local points = Q6011ClientConfig.Points

function Q601114Trigger_Enter:OnPostDataPrepare()
    print("Q601114Trigger_Enter - OnPostDataPrepare")
    this = self
end

function Q601114Trigger_Enter:OnPostComponentPrepare()
    print("Q601114Trigger_Enter - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6011)
end

function Q601114Trigger_Enter:TriggerIn()
    print("Q601114Trigger_Enter - TriggerIn")
    actorUtils.FinishQuestID(false, 601114)
    this:DestroySelf()
end

function Q601114Trigger_Enter:PreTriggerIn()
    print("Q601114Trigger_Enter - PreTriggerIn")
end

function Q601114Trigger_Enter:LightUpTriggerIn()
    print("Q601114Trigger_Enter - LightUpTriggerIn")
end

function Q601114Trigger_Enter:TriggerOut()
    print("Q601114Trigger_Enter - TriggerOut")
end

return Q601114Trigger_Enter
