require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007414Trigger = class("Q7007414Trigger", GadgetActorProxy)
Q7007414Trigger.defaultAlias = "Q7007414Trigger"
local Q70074ClientConfig = require("Quest/Client/Q70074ClientConfig")

local this
local subIDs = Q70074ClientConfig.SubIDs
local datas = Q70074ClientConfig.Datas
local npcs = Q70074ClientConfig.Npcs
local points = Q70074ClientConfig.Points

function Q7007414Trigger:OnPostDataPrepare()
    print("Q7007414Trigger - OnPostDataPrepare")
    this = self
end

function Q7007414Trigger:OnPostComponentPrepare()
    print("Q7007414Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(28, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70074)
end

function Q7007414Trigger:TriggerIn()
    print("Q7007414Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7007414})
    this:DestroySelf()
end

function Q7007414Trigger:PreTriggerIn()
    print("Q7007414Trigger - PreTriggerIn")
end

function Q7007414Trigger:LightUpTriggerIn()
    print("Q7007414Trigger - LightUpTriggerIn")
end

function Q7007414Trigger:TriggerOut()
    print("Q7007414Trigger - TriggerOut")
end

return Q7007414Trigger
