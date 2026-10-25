require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40194Trigger4 = class("Q40194Trigger4", GadgetActorProxy)
Q40194Trigger4.defaultAlias = "Q40194Trigger4"
local Q40194ClientConfig = require("Quest/Client/Q40194ClientConfig")

local this
local subIDs = Q40194ClientConfig.SubIDs
local datas = Q40194ClientConfig.Datas
local npcs = Q40194ClientConfig.Npcs
local points = Q40194ClientConfig.Points

function Q40194Trigger4:OnPostDataPrepare()
    print("Q40194Trigger4 - OnPostDataPrepare")
    this = self
end

function Q40194Trigger4:OnPostComponentPrepare()
    print("Q40194Trigger4 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40194)
end

function Q40194Trigger4:TriggerIn()
    print("Q40194Trigger4 - TriggerIn")
    actorMgr:GetActor("40194"):QuestNarratorTask(datas.NarratorWithId_4019401, nil)
    this:DestroySelf()
end

function Q40194Trigger4:PreTriggerIn()
    print("Q40194Trigger4 - PreTriggerIn")
end

function Q40194Trigger4:LightUpTriggerIn()
    print("Q40194Trigger4 - LightUpTriggerIn")
end

function Q40194Trigger4:TriggerOut()
    print("Q40194Trigger4 - TriggerOut")
end

return Q40194Trigger4
