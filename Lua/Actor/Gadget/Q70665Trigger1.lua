require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70665Trigger1 = class("Q70665Trigger1", GadgetActorProxy)
Q70665Trigger1.defaultAlias = "Q70665Trigger1"
local Q70665ClientConfig = require("Quest/Client/Q70665ClientConfig")

local this
local subIDs = Q70665ClientConfig.SubIDs
local npcs = Q70665ClientConfig.Npcs
local datas = Q70665ClientConfig.Datas

function Q70665Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q70665Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q70665Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70665"):NarratorOnlyTaskByData(datas.Narrator_7066501, nil, 70665)
    this:DestroySelf()
end

function Q70665Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q70665Trigger1
