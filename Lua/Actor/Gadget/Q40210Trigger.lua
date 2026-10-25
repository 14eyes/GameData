require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40210Trigger = class("Q40210Trigger", GadgetActorProxy)
Q40210Trigger.defaultAlias = "Q40210Trigger"
local Q40210ClientConfig = require("Quest/Client/Q40210ClientConfig")

local this
local subIDs = Q40210ClientConfig.SubIDs
local datas = Q40210ClientConfig.Datas
local npcs = Q40210ClientConfig.Npcs
local points = Q40210ClientConfig.Points

function Q40210Trigger:OnPostDataPrepare()
    print("Q40210Trigger - OnPostDataPrepare")
    this = self
end

function Q40210Trigger:OnPostComponentPrepare()
    print("Q40210Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40210)
end

function Q40210Trigger:TriggerIn()
    print("Q40210Trigger - TriggerIn")
    actorMgr:GetActor("40210"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("40210"):CreateQuestNpcById(4021005, npcs.Npc1063.id, 0, false, 0)
        actorMgr:GetActor("40210"):RequestInteraction(npcs.Npc1063.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40210Trigger:PreTriggerIn()
    print("Q40210Trigger - PreTriggerIn")
end

function Q40210Trigger:LightUpTriggerIn()
    print("Q40210Trigger - LightUpTriggerIn")
end

function Q40210Trigger:TriggerOut()
    print("Q40210Trigger - TriggerOut")
end

return Q40210Trigger
