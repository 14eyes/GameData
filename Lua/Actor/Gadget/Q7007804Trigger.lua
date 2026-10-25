require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007804Trigger = class("Q7007804Trigger", GadgetActorProxy)
Q7007804Trigger.defaultAlias = "Q7007804Trigger"
local Q70078ClientConfig = require("Quest/Client/Q70078ClientConfig")

local this
local subIDs = Q70078ClientConfig.SubIDs
local datas = Q70078ClientConfig.Datas
local npcs = Q70078ClientConfig.Npcs
local points = Q70078ClientConfig.Points

function Q7007804Trigger:OnPostDataPrepare()
    print("Q7007804Trigger - OnPostDataPrepare")
    this = self
end

function Q7007804Trigger:OnPostComponentPrepare()
    print("Q7007804Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70078)
end

function Q7007804Trigger:TriggerIn()
    print("Q7007804Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7007804)
    this:DestroySelf()
end

function Q7007804Trigger:PreTriggerIn()
    print("Q7007804Trigger - PreTriggerIn")
end

function Q7007804Trigger:LightUpTriggerIn()
    print("Q7007804Trigger - LightUpTriggerIn")
end

function Q7007804Trigger:TriggerOut()
    print("Q7007804Trigger - TriggerOut")
end

return Q7007804Trigger
