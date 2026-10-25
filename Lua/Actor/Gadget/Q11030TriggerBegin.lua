require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11030TriggerBegin = class("Q11030TriggerBegin", GadgetActorProxy)
Q11030TriggerBegin.defaultAlias = "Q11030TriggerBegin"
local Q11030ClientConfig = require("Quest/Client/Q11030ClientConfig")

local mainID = Q11030ClientConfig.MainID
local actorAlias = Q11030ClientConfig.ActorAlias
local subIDs = Q11030ClientConfig.SubIDs
local npcs = Q11030ClientConfig.Npcs
local datas = Q11030ClientConfig.Datas

function Q11030TriggerBegin:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11030TriggerBegin:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(11, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11030TriggerBegin:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc214001Data.alias)
    self:DestroySelf()
end

function Q11030TriggerBegin:TriggerOut()
    print("TriggerOut")
end

return Q11030TriggerBegin
