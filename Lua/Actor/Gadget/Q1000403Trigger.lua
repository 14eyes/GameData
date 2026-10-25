require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000403Trigger = class("Q1000403Trigger", GadgetActorProxy)
Q1000403Trigger.defaultAlias = "Q1000403Trigger"
local Q10004ClientConfig = require("Quest/Client/Q10004ClientConfig")

local this
local subIDs = Q10004ClientConfig.SubIDs
local datas = Q10004ClientConfig.Datas
local npcs = Q10004ClientConfig.Npcs

function Q1000403Trigger:OnPostDataPrepare()
    print("Q1000403Trigger - OnPostDataPrepare")
    this = self
end

function Q1000403Trigger:OnPostComponentPrepare()
    print("Q1000403Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10004)
end

function Q1000403Trigger:TriggerIn()
    print("Q1000403Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000403)
    this:DestroySelf()
end

function Q1000403Trigger:PreTriggerIn()
    print("Q1000403Trigger - PreTriggerIn")
end

function Q1000403Trigger:LightUpTriggerIn()
    print("Q1000403Trigger - LightUpTriggerIn")
end

function Q1000403Trigger:TriggerOut()
    print("Q1000403Trigger - TriggerOut")
end

return Q1000403Trigger
