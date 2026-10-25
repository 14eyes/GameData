require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501227Narrator1 = class("Q501227Narrator1", GadgetActorProxy)
Q501227Narrator1.defaultAlias = "Q501227Narrator1"
local Q5012ClientConfig = require("Quest/Client/Q5012ClientConfig")

local this
local subIDs = Q5012ClientConfig.SubIDs
local datas = Q5012ClientConfig.Datas
local npcs = Q5012ClientConfig.Npcs
local points = Q5012ClientConfig.Points

function Q501227Narrator1:OnPostDataPrepare()
    print("Q501227Narrator1 - OnPostDataPrepare")
    this = self
end

function Q501227Narrator1:OnPostComponentPrepare()
    print("Q501227Narrator1 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5012)
end

function Q501227Narrator1:TriggerIn()
    print("Q501227Narrator1 - TriggerIn")
    actorMgr:GetActor("5012"):QuestNarratorTask(datas.NarratorWithId_501213, nil)
    this:DestroySelf()
end

function Q501227Narrator1:PreTriggerIn()
    print("Q501227Narrator1 - PreTriggerIn")
end

function Q501227Narrator1:LightUpTriggerIn()
    print("Q501227Narrator1 - LightUpTriggerIn")
end

function Q501227Narrator1:TriggerOut()
    print("Q501227Narrator1 - TriggerOut")
end

return Q501227Narrator1
