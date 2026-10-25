require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11013TriggerXingqiu = class("Q11013TriggerXingqiu", GadgetActorProxy)
Q11013TriggerXingqiu.defaultAlias = "Q11013TriggerXingqiu"
local Q11013ClientConfig = require("Quest/Client/Q11013ClientConfig")

local subIDs = Q11013ClientConfig.SubIDs
local npcs = Q11013ClientConfig.Npcs
local datas = Q11013ClientConfig.Datas

function Q11013TriggerXingqiu:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11013TriggerXingqiu:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11013TriggerXingqiu:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11013"):RequestInteraction(npcs.Npc1627Data.alias)
    self:DestroySelf()
end

function Q11013TriggerXingqiu:TriggerOut()
    print("TriggerOut")
end

return Q11013TriggerXingqiu
