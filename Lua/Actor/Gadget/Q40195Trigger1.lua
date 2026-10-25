require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40195Trigger1 = class("Q40195Trigger1", GadgetActorProxy)
Q40195Trigger1.defaultAlias = "Q40195Trigger1"
local Q40195ClientConfig = require("Quest/Client/Q40195ClientConfig")

local this
local subIDs = Q40195ClientConfig.SubIDs
local datas = Q40195ClientConfig.Datas
local npcs = Q40195ClientConfig.Npcs
local points = Q40195ClientConfig.Points

function Q40195Trigger1:OnPostDataPrepare()
    print("Q40195Trigger1 - OnPostDataPrepare")
    this = self
end

function Q40195Trigger1:OnPostComponentPrepare()
    print("Q40195Trigger1 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 50, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40195)
end

function Q40195Trigger1:TriggerIn()
    print("Q40195Trigger1 - TriggerIn")
    actorMgr:GetActor("40195"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("40195"):RequestInteraction(npcs.Npc15254.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40195Trigger1:PreTriggerIn()
    print("Q40195Trigger1 - PreTriggerIn")
end

function Q40195Trigger1:LightUpTriggerIn()
    print("Q40195Trigger1 - LightUpTriggerIn")
    actorMgr:GetActor("40195"):ShowBlackScreenWithDialogText(0, 3, 0.5, nil, nil, nil, 0, false, true)
end

function Q40195Trigger1:TriggerOut()
    print("Q40195Trigger1 - TriggerOut")
end

return Q40195Trigger1
