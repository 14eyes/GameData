require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger_12 = class("Q40211Trigger_12", GadgetActorProxy)
Q40211Trigger_12.defaultAlias = "Q40211Trigger_12"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger_12:OnPostDataPrepare()
    print("Q40211Trigger_12 - OnPostDataPrepare")
    this = self
end

function Q40211Trigger_12:OnPostComponentPrepare()
    print("Q40211Trigger_12 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger_12:TriggerIn()
    print("Q40211Trigger_12 - TriggerIn")
    actorMgr:GetActor("40211"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("40211"):CancelStoryByQuest(134021100)
        actorMgr:GetActor("40211"):CreateQuestNpcById(4021107, npcs.Npc1085.id, 0, false, 0)
        actorMgr:GetActor("40211"):RequestInteraction(npcs.Npc1085.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40211Trigger_12:PreTriggerIn()
    print("Q40211Trigger_12 - PreTriggerIn")
end

function Q40211Trigger_12:LightUpTriggerIn()
    print("Q40211Trigger_12 - LightUpTriggerIn")
end

function Q40211Trigger_12:TriggerOut()
    print("Q40211Trigger_12 - TriggerOut")
end

return Q40211Trigger_12
