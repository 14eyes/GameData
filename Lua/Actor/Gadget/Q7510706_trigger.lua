require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7510706_trigger = class("Q7510706_trigger", GadgetActorProxy)
Q7510706_trigger.defaultAlias = "Q7510706_trigger"
local Q75107ClientConfig = require("Quest/Client/Q75107ClientConfig")

local this
local subIDs = Q75107ClientConfig.SubIDs
local datas = Q75107ClientConfig.Datas
local npcs = Q75107ClientConfig.Npcs
local points = Q75107ClientConfig.Points

function Q7510706_trigger:OnPostDataPrepare()
    print("Q7510706_trigger - OnPostDataPrepare")
    this = self
end

function Q7510706_trigger:OnPostComponentPrepare()
    print("Q7510706_trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(37.5143, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75107)
end

function Q7510706_trigger:TriggerIn()
    print("Q7510706_trigger - TriggerIn")
    actorMgr:GetActor("75107"):QuestNarratorTask(datas.NarratorWithId_7510706, function(arg1)
        actorUtils.FinishQuestID(false, 7510706)
        this:DestroySelf()
    end)
end

function Q7510706_trigger:PreTriggerIn()
    print("Q7510706_trigger - PreTriggerIn")
end

function Q7510706_trigger:LightUpTriggerIn()
    print("Q7510706_trigger - LightUpTriggerIn")
end

function Q7510706_trigger:TriggerOut()
    print("Q7510706_trigger - TriggerOut")
end

return Q7510706_trigger
