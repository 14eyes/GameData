require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7468501Trigger = class("Q7468501Trigger", GadgetActorProxy)
Q7468501Trigger.defaultAlias = "Q7468501Trigger"
local Q74685ClientConfig = require("Quest/Client/Q74685ClientConfig")

local this
local subIDs = Q74685ClientConfig.SubIDs
local datas = Q74685ClientConfig.Datas
local npcs = Q74685ClientConfig.Npcs
local points = Q74685ClientConfig.Points

function Q7468501Trigger:OnPostDataPrepare()
    print("Q7468501Trigger - OnPostDataPrepare")
    this = self
end

function Q7468501Trigger:OnPostComponentPrepare()
    print("Q7468501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74685)
end

function Q7468501Trigger:TriggerIn()
    print("Q7468501Trigger - TriggerIn")
    actorMgr:GetActor("74685"):QuestNarratorTask(datas.NarratorWithId_7468501, function(arg1)
        actorUtils.FinishQuestID(false, 7468501)
    end)

    this:DestroySelf()
end

function Q7468501Trigger:PreTriggerIn()
    print("Q7468501Trigger - PreTriggerIn")
end

function Q7468501Trigger:LightUpTriggerIn()
    print("Q7468501Trigger - LightUpTriggerIn")
end

function Q7468501Trigger:TriggerOut()
    print("Q7468501Trigger - TriggerOut")
end

return Q7468501Trigger
