require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602421Trigger_intro = class("Q7602421Trigger_intro", GadgetActorProxy)
Q7602421Trigger_intro.defaultAlias = "Q7602421Trigger_intro"
local Q76024ClientConfig = require("Quest/Client/Q76024ClientConfig")

local this
local subIDs = Q76024ClientConfig.SubIDs
local datas = Q76024ClientConfig.Datas
local npcs = Q76024ClientConfig.Npcs
local points = Q76024ClientConfig.Points

function Q7602421Trigger_intro:OnPostDataPrepare()
    print("Q7602421Trigger_intro - OnPostDataPrepare")
    this = self
end

function Q7602421Trigger_intro:OnPostComponentPrepare()
    print("Q7602421Trigger_intro - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76024)
end

function Q7602421Trigger_intro:TriggerIn()
    print("Q7602421Trigger_intro - TriggerIn")
    actorMgr:GetActor("76024"):QuestNarratorTask(datas.NarratorWithId_760242202, nil)
    this:DestroySelf()
end

function Q7602421Trigger_intro:PreTriggerIn()
    print("Q7602421Trigger_intro - PreTriggerIn")
end

function Q7602421Trigger_intro:LightUpTriggerIn()
    print("Q7602421Trigger_intro - LightUpTriggerIn")
end

function Q7602421Trigger_intro:TriggerOut()
    print("Q7602421Trigger_intro - TriggerOut")
end

return Q7602421Trigger_intro
