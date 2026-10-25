require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601113Trigger_Enter_01 = class("Q601113Trigger_Enter_01", GadgetActorProxy)
Q601113Trigger_Enter_01.defaultAlias = "Q601113Trigger_Enter_01"
local Q6011ClientConfig = require("Quest/Client/Q6011ClientConfig")

local this
local subIDs = Q6011ClientConfig.SubIDs
local datas = Q6011ClientConfig.Datas
local npcs = Q6011ClientConfig.Npcs
local points = Q6011ClientConfig.Points

function Q601113Trigger_Enter_01:OnPostDataPrepare()
    print("Q601113Trigger_Enter_01 - OnPostDataPrepare")
    this = self
end

function Q601113Trigger_Enter_01:OnPostComponentPrepare()
    print("Q601113Trigger_Enter_01 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6011)
end

function Q601113Trigger_Enter_01:TriggerIn()
    print("Q601113Trigger_Enter_01 - TriggerIn")
    actorUtils.FinishQuestID(false, 601113)
    this:DestroySelf()
end

function Q601113Trigger_Enter_01:PreTriggerIn()
    print("Q601113Trigger_Enter_01 - PreTriggerIn")
end

function Q601113Trigger_Enter_01:LightUpTriggerIn()
    print("Q601113Trigger_Enter_01 - LightUpTriggerIn")
end

function Q601113Trigger_Enter_01:TriggerOut()
    print("Q601113Trigger_Enter_01 - TriggerOut")
end

return Q601113Trigger_Enter_01
