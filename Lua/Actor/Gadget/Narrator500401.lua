require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Narrator500401 = class("Narrator500401", GadgetActorProxy)
Narrator500401.defaultAlias = "Narrator500401"
local Q5004ClientConfig = require("Quest/Client/Q5004ClientConfig")

local this
local subIDs = Q5004ClientConfig.SubIDs
local datas = Q5004ClientConfig.Datas
local npcs = Q5004ClientConfig.Npcs
local points = Q5004ClientConfig.Points

function Narrator500401:OnPostDataPrepare()
    print("Narrator500401 - OnPostDataPrepare")
    this = self
end

function Narrator500401:OnPostComponentPrepare()
    print("Narrator500401 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(60, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5004)
end

function Narrator500401:TriggerIn()
    print("Narrator500401 - TriggerIn")
    actorMgr:GetActor("5004"):ClearNarratorTask()
    actorMgr:GetActor("5004"):QuestNarratorTask(datas.NarratorWithId_500401, nil)
    this:DestroySelf()
end

function Narrator500401:PreTriggerIn()
    print("Narrator500401 - PreTriggerIn")
end

function Narrator500401:LightUpTriggerIn()
    print("Narrator500401 - LightUpTriggerIn")
end

function Narrator500401:TriggerOut()
    print("Narrator500401 - TriggerOut")
end

return Narrator500401
