require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger = class("Q40211Trigger", GadgetActorProxy)
Q40211Trigger.defaultAlias = "Q40211Trigger"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger:OnPostDataPrepare()
    print("Q40211Trigger - OnPostDataPrepare")
    this = self
end

function Q40211Trigger:OnPostComponentPrepare()
    print("Q40211Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger:TriggerIn()
    print("Q40211Trigger - TriggerIn")
    actorMgr:GetActor("40211"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("40211"):CreateQuestNpcById(4021104, npcs.Npc1085.id, 0, false, 0)
        actorMgr:GetActor("40211"):RequestInteraction(npcs.Npc1085.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40211Trigger:PreTriggerIn()
    print("Q40211Trigger - PreTriggerIn")
end

function Q40211Trigger:LightUpTriggerIn()
    print("Q40211Trigger - LightUpTriggerIn")
    actorMgr:GetActor("40211"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q40211Trigger:TriggerOut()
    print("Q40211Trigger - TriggerOut")
end

return Q40211Trigger
