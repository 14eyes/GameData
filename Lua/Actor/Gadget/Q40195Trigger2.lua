require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40195Trigger2 = class("Q40195Trigger2", GadgetActorProxy)
Q40195Trigger2.defaultAlias = "Q40195Trigger2"
local Q40195ClientConfig = require("Quest/Client/Q40195ClientConfig")

local this
local subIDs = Q40195ClientConfig.SubIDs
local datas = Q40195ClientConfig.Datas
local npcs = Q40195ClientConfig.Npcs
local points = Q40195ClientConfig.Points

function Q40195Trigger2:OnPostDataPrepare()
    print("Q40195Trigger2 - OnPostDataPrepare")
    this = self
end

function Q40195Trigger2:OnPostComponentPrepare()
    print("Q40195Trigger2 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40195)
end

function Q40195Trigger2:TriggerIn()
    print("Q40195Trigger2 - TriggerIn")
    actorMgr:GetActor("40195"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("40195"):RequestInteraction(npcs.Npc1076.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40195Trigger2:PreTriggerIn()
    print("Q40195Trigger2 - PreTriggerIn")
end

function Q40195Trigger2:LightUpTriggerIn()
    print("Q40195Trigger2 - LightUpTriggerIn")
    actorMgr:GetActor("40195"):ShowBlackScreenWithDialogText(0, 3, 0.5, nil, nil, nil, 0, false, true)
end

function Q40195Trigger2:TriggerOut()
    print("Q40195Trigger2 - TriggerOut")
end

return Q40195Trigger2
