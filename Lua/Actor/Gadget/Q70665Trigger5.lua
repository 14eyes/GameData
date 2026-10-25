require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70665Trigger5 = class("Q70665Trigger5", GadgetActorProxy)
Q70665Trigger5.defaultAlias = "Q70665Trigger5"
local Q70665ClientConfig = require("Quest/Client/Q70665ClientConfig")

local this
local subIDs = Q70665ClientConfig.SubIDs
local npcs = Q70665ClientConfig.Npcs
local datas = Q70665ClientConfig.Datas

function Q70665Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q70665Trigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, nil, nil, nil, nil, self.LightUpTriggerIn)
end

function Q70665Trigger5:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("70665"):ShowBlackScreenWithDialogText(0, 0.5, 0.5, function(arg1)
        actorMgr:GetActor("70665"):RequestInteraction(npcs.Npc10011Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q70665Trigger5:TriggerOut()
    print("TriggerOut")
end

return Q70665Trigger5
