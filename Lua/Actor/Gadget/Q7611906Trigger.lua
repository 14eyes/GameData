require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7611906Trigger = class("Q7611906Trigger", GadgetActorProxy)
Q7611906Trigger.defaultAlias = "Q7611906Trigger"
local Q76119ClientConfig = require("Quest/Client/Q76119ClientConfig")

local this
local subIDs = Q76119ClientConfig.SubIDs
local datas = Q76119ClientConfig.Datas
local npcs = Q76119ClientConfig.Npcs
local points = Q76119ClientConfig.Points

function Q7611906Trigger:OnPostDataPrepare()
    print("Q7611906Trigger - OnPostDataPrepare")
    this = self
end

function Q7611906Trigger:OnPostComponentPrepare()
    print("Q7611906Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76119)
end

function Q7611906Trigger:TriggerIn()
    print("Q7611906Trigger - TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 7611906)
end

function Q7611906Trigger:PreTriggerIn()
    print("Q7611906Trigger - PreTriggerIn")
end

function Q7611906Trigger:LightUpTriggerIn()
    print("Q7611906Trigger - LightUpTriggerIn")
end

function Q7611906Trigger:TriggerOut()
    print("Q7611906Trigger - TriggerOut")
end

return Q7611906Trigger
