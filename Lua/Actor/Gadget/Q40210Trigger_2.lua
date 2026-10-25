require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40210Trigger_2 = class("Q40210Trigger_2", GadgetActorProxy)
Q40210Trigger_2.defaultAlias = "Q40210Trigger_2"
local Q40210ClientConfig = require("Quest/Client/Q40210ClientConfig")

local this
local subIDs = Q40210ClientConfig.SubIDs
local datas = Q40210ClientConfig.Datas
local npcs = Q40210ClientConfig.Npcs
local points = Q40210ClientConfig.Points

function Q40210Trigger_2:OnPostDataPrepare()
    print("Q40210Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q40210Trigger_2:OnPostComponentPrepare()
    print("Q40210Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40210)
end

function Q40210Trigger_2:TriggerIn()
    print("Q40210Trigger_2 - TriggerIn")
    actorMgr:GetActor("40210"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("40210"):RequestInteraction(npcs.Npc1063.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40210Trigger_2:PreTriggerIn()
    print("Q40210Trigger_2 - PreTriggerIn")
end

function Q40210Trigger_2:LightUpTriggerIn()
    print("Q40210Trigger_2 - LightUpTriggerIn")
    actorMgr:GetActor("40210"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q40210Trigger_2:TriggerOut()
    print("Q40210Trigger_2 - TriggerOut")
end

return Q40210Trigger_2
