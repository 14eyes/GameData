require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501705Trigger = class("Q501705Trigger", GadgetActorProxy)
Q501705Trigger.defaultAlias = "Q501705Trigger"
local Q5017ClientConfig = require("Quest/Client/Q5017ClientConfig")

local this
local subIDs = Q5017ClientConfig.SubIDs
local datas = Q5017ClientConfig.Datas
local npcs = Q5017ClientConfig.Npcs
local points = Q5017ClientConfig.Points

function Q501705Trigger:OnPostDataPrepare()
    print("Q501705Trigger - OnPostDataPrepare")
    this = self
end

function Q501705Trigger:OnPostComponentPrepare()
    print("Q501705Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5017)
end

function Q501705Trigger:TriggerIn()
    print("Q501705Trigger - TriggerIn")
    actorMgr:GetActor("5017"):ShowBlackScreenWithDialogText(0.5, 3, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 501705)
    end, function(arg1)
        actorMgr:GetActor("5017"):QuestNarratorTask(datas.NarratorWithId501702, nil)
        this:DestroySelf()
    end, nil, 0, false, true)
end

function Q501705Trigger:PreTriggerIn()
    print("Q501705Trigger - PreTriggerIn")
end

function Q501705Trigger:LightUpTriggerIn()
    print("Q501705Trigger - LightUpTriggerIn")
end

function Q501705Trigger:TriggerOut()
    print("Q501705Trigger - TriggerOut")
end

return Q501705Trigger
