require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11020SitTrigger = class("Q11020SitTrigger", GadgetActorProxy)
Q11020SitTrigger.defaultAlias = "Q11020SitTrigger"
local Q11020ClientConfig = require("Quest/Client/Q11020ClientConfig")

local mainID = Q11020ClientConfig.MainID
local actorAlias = Q11020ClientConfig.ActorAlias
local subIDs = Q11020ClientConfig.SubIDs
local npcs = Q11020ClientConfig.Npcs
local datas = Q11020ClientConfig.Datas

function Q11020SitTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11020SitTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11020SitTrigger:TriggerIn()
    local actor = actorMgr:GetActor(actorAlias)
    actor:GetQuestNpcActor(npcs.Npc10232Data.alias):SitOnChair()
    actor:GetQuestNpcActor(npcs.Npc10303Data.alias):SitOnChair()
    actor:GetQuestNpcActor(npcs.Npc10308Data.alias):SitOnChair()
    actor:GetQuestNpcActor(npcs.Npc10309Data.alias):SitOnChair()
end

function Q11020SitTrigger:TriggerOut()
    print("TriggerOut")
end

return Q11020SitTrigger
