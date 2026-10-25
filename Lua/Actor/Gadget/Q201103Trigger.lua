require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q201103Trigger = class("Q201103Trigger", GadgetActorProxy)
Q201103Trigger.defaultAlias = "Q201103Trigger"
local Q2011ClientConfig = require("Quest/Client/Q2011ClientConfig")

local subIDs = Q2011ClientConfig.SubIDs
local npcs = Q2011ClientConfig.Npcs

function Q201103Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q201103Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q201103Trigger:TriggerIn()
    print("TriggerIn")
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        actorMgr:GetActor("2011"):RequestInteraction(npcs.Npc1031Data.alias)
        self:DestroySelf()
    end)
end

function Q201103Trigger:TriggerOut()
    print("TriggerOut")
end

return Q201103Trigger
