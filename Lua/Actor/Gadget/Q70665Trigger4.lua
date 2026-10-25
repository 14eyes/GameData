require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70665Trigger4 = class("Q70665Trigger4", GadgetActorProxy)
Q70665Trigger4.defaultAlias = "Q70665Trigger4"
local Q70665ClientConfig = require("Quest/Client/Q70665ClientConfig")

local this
local subIDs = Q70665ClientConfig.SubIDs
local npcs = Q70665ClientConfig.Npcs
local datas = Q70665ClientConfig.Datas

function Q70665Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q70665Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.LightUpTriggerIn, self.TriggerOut, nil, nil, self.LightUpTriggerIn)
end

function Q70665Trigger4:LightUpTriggerIn()
    print("LightUpTriggerIn")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({npcs.Npc1437Data.alias})
    actorMgr:GetActor("70665"):ShowBlackScreenWithDialogText(0, 1, 1.5, function(arg1)
        arg1:RequestInteractionForceAlias("Npc1437")
    end, nil, entityCreateTask)

    this:DestroySelf()
end

function Q70665Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q70665Trigger4
