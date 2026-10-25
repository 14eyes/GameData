require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4018614Trigger = class("Q4018614Trigger", GadgetActorProxy)
Q4018614Trigger.defaultAlias = "Q4018614Trigger"
local Q40186ClientConfig = require("Quest/Client/Q40186ClientConfig")

local this
local subIDs = Q40186ClientConfig.SubIDs
local datas = Q40186ClientConfig.Datas
local npcs = Q40186ClientConfig.Npcs
local points = Q40186ClientConfig.Points

function Q4018614Trigger:OnPostDataPrepare()
    print("Q4018614Trigger - OnPostDataPrepare")
    this = self
end

function Q4018614Trigger:OnPostComponentPrepare()
    print("Q4018614Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(95, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40186)
end

function Q4018614Trigger:TriggerIn()
    print("Q4018614Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4018614)
    this:DestroySelf()
end

function Q4018614Trigger:PreTriggerIn()
    print("Q4018614Trigger - PreTriggerIn")
end

function Q4018614Trigger:LightUpTriggerIn()
    print("Q4018614Trigger - LightUpTriggerIn")
end

function Q4018614Trigger:TriggerOut()
    print("Q4018614Trigger - TriggerOut")
end

return Q4018614Trigger
