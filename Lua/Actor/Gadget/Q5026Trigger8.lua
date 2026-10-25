require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5026Trigger8 = class("Q5026Trigger8", GadgetActorProxy)
Q5026Trigger8.defaultAlias = "Q5026Trigger8"
local Q5026ClientConfig = require("Quest/Client/Q5026ClientConfig")

local this
local subIDs = Q5026ClientConfig.SubIDs
local datas = Q5026ClientConfig.Datas
local npcs = Q5026ClientConfig.Npcs
local points = Q5026ClientConfig.Points

function Q5026Trigger8:OnPostDataPrepare()
    print("Q5026Trigger8 - OnPostDataPrepare")
    this = self
end

function Q5026Trigger8:OnPostComponentPrepare()
    print("Q5026Trigger8 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5026)
end

function Q5026Trigger8:TriggerIn()
    print("Q5026Trigger8 - TriggerIn")
    actorUtils.FinishQuestID(false, 502618)
    this:DestroySelf()
end

function Q5026Trigger8:PreTriggerIn()
    print("Q5026Trigger8 - PreTriggerIn")
end

function Q5026Trigger8:LightUpTriggerIn()
    print("Q5026Trigger8 - LightUpTriggerIn")
end

function Q5026Trigger8:TriggerOut()
    print("Q5026Trigger8 - TriggerOut")
end

return Q5026Trigger8
