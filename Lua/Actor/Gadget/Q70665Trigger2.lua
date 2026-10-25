require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70665Trigger2 = class("Q70665Trigger2", GadgetActorProxy)
Q70665Trigger2.defaultAlias = "Q70665Trigger2"
local Q70665ClientConfig = require("Quest/Client/Q70665ClientConfig")

local this
local subIDs = Q70665ClientConfig.SubIDs
local npcs = Q70665ClientConfig.Npcs
local datas = Q70665ClientConfig.Datas

function Q70665Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q70665Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, nil, nil, nil, nil, self.LightUpTriggerIn)
end

function Q70665Trigger2:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("70665"):ShowBlackScreenWithDialogText(0, 0.5, 0.5, function(arg1)
        actorMgr:GetActor("70665"):RequestInteraction(npcs.Npc1061Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q70665Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q70665Trigger2
