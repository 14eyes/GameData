require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40194Trigger2 = class("Q40194Trigger2", GadgetActorProxy)
Q40194Trigger2.defaultAlias = "Q40194Trigger2"
local Q40194ClientConfig = require("Quest/Client/Q40194ClientConfig")

local this
local subIDs = Q40194ClientConfig.SubIDs
local datas = Q40194ClientConfig.Datas
local npcs = Q40194ClientConfig.Npcs
local points = Q40194ClientConfig.Points

function Q40194Trigger2:OnPostDataPrepare()
    print("Q40194Trigger2 - OnPostDataPrepare")
    this = self
end

function Q40194Trigger2:OnPostComponentPrepare()
    print("Q40194Trigger2 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(25, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40194)
end

function Q40194Trigger2:TriggerIn()
    print("Q40194Trigger2 - TriggerIn")
    actorMgr:GetActor("40194"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("40194"):RequestInteraction(npcs.Npc30770.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40194Trigger2:PreTriggerIn()
    print("Q40194Trigger2 - PreTriggerIn")
end

function Q40194Trigger2:LightUpTriggerIn()
    print("Q40194Trigger2 - LightUpTriggerIn")
    actorMgr:GetActor("40194"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q40194Trigger2:TriggerOut()
    print("Q40194Trigger2 - TriggerOut")
end

return Q40194Trigger2
