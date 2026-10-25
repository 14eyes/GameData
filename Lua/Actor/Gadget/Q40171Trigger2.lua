require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40171Trigger2 = class("Q40171Trigger2", GadgetActorProxy)
Q40171Trigger2.defaultAlias = "Q40171Trigger2"
local Q40171ClientConfig = require("Quest/Client/Q40171ClientConfig")

local this
local subIDs = Q40171ClientConfig.SubIDs
local datas = Q40171ClientConfig.Datas
local npcs = Q40171ClientConfig.Npcs
local points = Q40171ClientConfig.Points

function Q40171Trigger2:OnPostDataPrepare()
    print("Q40171Trigger2 - OnPostDataPrepare")
    this = self
end

function Q40171Trigger2:OnPostComponentPrepare()
    print("Q40171Trigger2 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40171)
end

function Q40171Trigger2:TriggerIn()
    print("Q40171Trigger2 - TriggerIn")
    actorMgr:GetActor("40171"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("40171"):CreateQuestNpcById(4017103, 1094, 0, false, 0)
        actorMgr:GetActor("40171"):RequestInteraction(npcs.Npc1094.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40171Trigger2:PreTriggerIn()
    print("Q40171Trigger2 - PreTriggerIn")
end

function Q40171Trigger2:LightUpTriggerIn()
    print("Q40171Trigger2 - LightUpTriggerIn")
end

function Q40171Trigger2:TriggerOut()
    print("Q40171Trigger2 - TriggerOut")
end

return Q40171Trigger2
