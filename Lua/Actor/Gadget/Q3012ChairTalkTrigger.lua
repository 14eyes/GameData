require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3012ChairTalkTrigger = class("Q3012ChairTalkTrigger", GadgetActorProxy)
Q3012ChairTalkTrigger.defaultAlias = "Q3012ChairTalkTrigger"
local Q3012ClientConfig = require("Quest/Client/Q3012ClientConfig")

local subIDs = Q3012ClientConfig.SubIDs
local npcs = Q3012ClientConfig.Npcs
local datas = Q3012ClientConfig.Datas

function Q3012ChairTalkTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3012ChairTalkTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(14, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3012ChairTalkTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3012"):RequestInteraction(npcs.Npc12555Data.alias)
    self:DestroySelf()
end

function Q3012ChairTalkTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3012ChairTalkTrigger
