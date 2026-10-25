require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600204Trigger = class("Q7600204Trigger", GadgetActorProxy)
Q7600204Trigger.defaultAlias = "Q7600204Trigger"
local Q76002ClientConfig = require("Quest/Client/Q76002ClientConfig")

local this
local subIDs = Q76002ClientConfig.SubIDs
local datas = Q76002ClientConfig.Datas
local npcs = Q76002ClientConfig.Npcs
local points = Q76002ClientConfig.Points

function Q7600204Trigger:OnPostDataPrepare()
    print("Q7600204Trigger - OnPostDataPrepare")
    this = self
end

function Q7600204Trigger:OnPostComponentPrepare()
    print("Q7600204Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76002)
end

function Q7600204Trigger:TriggerIn()
    print("Q7600204Trigger - TriggerIn")
    actorMgr:GetActor("76002"):QuestNarratorTask(datas.NarratorWithId_7600203, nil)
    this:DestroySelf()
end

function Q7600204Trigger:PreTriggerIn()
    print("Q7600204Trigger - PreTriggerIn")
end

function Q7600204Trigger:LightUpTriggerIn()
    print("Q7600204Trigger - LightUpTriggerIn")
end

function Q7600204Trigger:TriggerOut()
    print("Q7600204Trigger - TriggerOut")
end

return Q7600204Trigger
