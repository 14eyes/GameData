require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger_1501901_02 = class("Trigger_1501901_02", GadgetActorProxy)
Trigger_1501901_02.defaultAlias = "Trigger_1501901_02"
local Q15019ClientConfig = require("Quest/Client/Q15019ClientConfig")

local this
local subIDs = Q15019ClientConfig.SubIDs
local datas = Q15019ClientConfig.Datas
local npcs = Q15019ClientConfig.Npcs
local points = Q15019ClientConfig.Points

function Trigger_1501901_02:OnPostDataPrepare()
    print("Trigger_1501901_02 - OnPostDataPrepare")
    this = self
end

function Trigger_1501901_02:OnPostComponentPrepare()
    print("Trigger_1501901_02 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(37.972237, 18.18527, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15019)
end

function Trigger_1501901_02:TriggerIn()
    print("Trigger_1501901_02 - TriggerIn")
    actorMgr:GetActor("15019"):ActionSafeCall(function(arg1)
        actorMgr:GetActor("15019"):QuestNarratorTask(datas.NarratorWithId_1501901, nil)
        this:DestroySelf()
    end)
end

function Trigger_1501901_02:PreTriggerIn()
    print("Trigger_1501901_02 - PreTriggerIn")
end

function Trigger_1501901_02:LightUpTriggerIn()
    print("Trigger_1501901_02 - LightUpTriggerIn")
end

function Trigger_1501901_02:TriggerOut()
    print("Trigger_1501901_02 - TriggerOut")
end

return Trigger_1501901_02
