require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7421714Trigger = class("Q7421714Trigger", GadgetActorProxy)
Q7421714Trigger.defaultAlias = "Q7421714Trigger"
local Q74217ClientConfig = require("Quest/Client/Q74217ClientConfig")

local this
local subIDs = Q74217ClientConfig.SubIDs
local datas = Q74217ClientConfig.Datas
local npcs = Q74217ClientConfig.Npcs
local points = Q74217ClientConfig.Points

function Q7421714Trigger:OnPostDataPrepare()
    print("Q7421714Trigger - OnPostDataPrepare")
    this = self
end

function Q7421714Trigger:OnPostComponentPrepare()
    print("Q7421714Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74217)
end

function Q7421714Trigger:TriggerIn()
    print("Q7421714Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7421714)
    this:DestroySelf()
end

function Q7421714Trigger:PreTriggerIn()
    print("Q7421714Trigger - PreTriggerIn")
end

function Q7421714Trigger:LightUpTriggerIn()
    print("Q7421714Trigger - LightUpTriggerIn")
end

function Q7421714Trigger:TriggerOut()
    print("Q7421714Trigger - TriggerOut")
end

return Q7421714Trigger
