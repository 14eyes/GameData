require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4021814_TriggerIn02 = class("Q4021814_TriggerIn02", GadgetActorProxy)
Q4021814_TriggerIn02.defaultAlias = "Q4021814_TriggerIn02"
local Q40218ClientConfig = require("Quest/Client/Q40218ClientConfig")

local this
local subIDs = Q40218ClientConfig.SubIDs
local datas = Q40218ClientConfig.Datas
local npcs = Q40218ClientConfig.Npcs
local points = Q40218ClientConfig.Points

function Q4021814_TriggerIn02:OnPostDataPrepare()
    print("Q4021814_TriggerIn02 - OnPostDataPrepare")
    this = self
end

function Q4021814_TriggerIn02:OnPostComponentPrepare()
    print("Q4021814_TriggerIn02 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40218)
end

function Q4021814_TriggerIn02:TriggerIn()
    print("Q4021814_TriggerIn02 - TriggerIn")
    actorMgr:GetActor("40218"):QuestNarratorTask(datas.NarratorWithId_4021814_02, nil)
    actorMgr:GetActor("40218"):EnterSceneLookCameraByParam(datas.SceneLookCameraParams)
    this:DestroySelf()
end

function Q4021814_TriggerIn02:PreTriggerIn()
    print("Q4021814_TriggerIn02 - PreTriggerIn")
end

function Q4021814_TriggerIn02:LightUpTriggerIn()
    print("Q4021814_TriggerIn02 - LightUpTriggerIn")
end

function Q4021814_TriggerIn02:TriggerOut()
    print("Q4021814_TriggerIn02 - TriggerOut")
end

return Q4021814_TriggerIn02
