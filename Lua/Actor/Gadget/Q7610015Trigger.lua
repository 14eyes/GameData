require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610015Trigger = class("Q7610015Trigger", GadgetActorProxy)
Q7610015Trigger.defaultAlias = "Q7610015Trigger"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610015Trigger:OnPostDataPrepare()
    print("Q7610015Trigger - OnPostDataPrepare")
    this = self
end

function Q7610015Trigger:OnPostComponentPrepare()
    print("Q7610015Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610015Trigger:TriggerIn()
    print("Q7610015Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7610015)
    this:DestroySelf()
end

function Q7610015Trigger:PreTriggerIn()
    print("Q7610015Trigger - PreTriggerIn")
end

function Q7610015Trigger:LightUpTriggerIn()
    print("Q7610015Trigger - LightUpTriggerIn")
end

function Q7610015Trigger:TriggerOut()
    print("Q7610015Trigger - TriggerOut")
end

return Q7610015Trigger
