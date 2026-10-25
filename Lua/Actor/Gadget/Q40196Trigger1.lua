require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40196Trigger1 = class("Q40196Trigger1", GadgetActorProxy)
Q40196Trigger1.defaultAlias = "Q40196Trigger1"
local Q40196ClientConfig = require("Quest/Client/Q40196ClientConfig")

local this
local subIDs = Q40196ClientConfig.SubIDs
local datas = Q40196ClientConfig.Datas
local npcs = Q40196ClientConfig.Npcs
local points = Q40196ClientConfig.Points

function Q40196Trigger1:OnPostDataPrepare()
    print("Q40196Trigger1 - OnPostDataPrepare")
    this = self
end

function Q40196Trigger1:OnPostComponentPrepare()
    print("Q40196Trigger1 - OnPostComponentPrepare")
    this:AddComponentTrigger(23, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40196)
end

function Q40196Trigger1:TriggerIn()
    print("Q40196Trigger1 - TriggerIn")
    actorMgr:GetActor("40196"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("40196"):CreateQuestNpcById(4019603, 15174, 0, false, 0)
        actorMgr:GetActor("40196"):RequestInteraction(npcs.Npc15174.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40196Trigger1:PreTriggerIn()
    print("Q40196Trigger1 - PreTriggerIn")
end

function Q40196Trigger1:LightUpTriggerIn()
    print("Q40196Trigger1 - LightUpTriggerIn")
    actorMgr:GetActor("40196"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q40196Trigger1:TriggerOut()
    print("Q40196Trigger1 - TriggerOut")
end

return Q40196Trigger1
