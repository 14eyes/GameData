require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70665Trigger6 = class("Q70665Trigger6", GadgetActorProxy)
Q70665Trigger6.defaultAlias = "Q70665Trigger6"
local Q70665ClientConfig = require("Quest/Client/Q70665ClientConfig")

local this
local subIDs = Q70665ClientConfig.SubIDs
local npcs = Q70665ClientConfig.Npcs
local datas = Q70665ClientConfig.Datas

function Q70665Trigger6:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q70665Trigger6:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(9, 10, 12, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q70665Trigger6:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70665"):RequestInteraction(npcs.Npc10011Data.alias)
    this:DestroySelf()
end

function Q70665Trigger6:PreTriggerIn()
    print("PreTriggerIn")
end

function Q70665Trigger6:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q70665Trigger6:TriggerOut()
    print("TriggerOut")
end

return Q70665Trigger6
