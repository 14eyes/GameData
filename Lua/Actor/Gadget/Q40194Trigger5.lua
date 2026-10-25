require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40194Trigger5 = class("Q40194Trigger5", GadgetActorProxy)
Q40194Trigger5.defaultAlias = "Q40194Trigger5"
local Q40194ClientConfig = require("Quest/Client/Q40194ClientConfig")

local this
local subIDs = Q40194ClientConfig.SubIDs
local datas = Q40194ClientConfig.Datas
local npcs = Q40194ClientConfig.Npcs
local points = Q40194ClientConfig.Points

function Q40194Trigger5:OnPostDataPrepare()
    print("Q40194Trigger5 - OnPostDataPrepare")
    this = self
end

function Q40194Trigger5:OnPostComponentPrepare()
    print("Q40194Trigger5 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40194)
end

function Q40194Trigger5:TriggerIn()
    print("Q40194Trigger5 - TriggerIn")
    actorMgr:GetActor("40194"):QuestNarratorTask(datas.NarratorWithId_4019402, nil)
    this:DestroySelf()
end

function Q40194Trigger5:PreTriggerIn()
    print("Q40194Trigger5 - PreTriggerIn")
end

function Q40194Trigger5:LightUpTriggerIn()
    print("Q40194Trigger5 - LightUpTriggerIn")
end

function Q40194Trigger5:TriggerOut()
    print("Q40194Trigger5 - TriggerOut")
end

return Q40194Trigger5
