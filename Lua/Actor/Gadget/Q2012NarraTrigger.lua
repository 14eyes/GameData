require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2012NarraTrigger = class("Q2012NarraTrigger", GadgetActorProxy)
Q2012NarraTrigger.defaultAlias = "Q2012NarraTrigger"
local Q2012ClientConfig = require("Quest/Client/Q2012ClientConfig")

local mainID = Q2012ClientConfig.MainID
local actorAlias = Q2012ClientConfig.ActorAlias
local subIDs = Q2012ClientConfig.SubIDs
local npcs = Q2012ClientConfig.Npcs
local gadgets = Q2012ClientConfig.Gadgets
local datas = Q2012ClientConfig.Datas

function Q2012NarraTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2012NarraTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2012NarraTrigger:TriggerIn()
    print("TriggerIn")
    self:NarratorOnlyTaskByData(datas.NarratorWithId02)
    self:DestroySelf()
end

function Q2012NarraTrigger:TriggerOut()
    print("TriggerOut")
end

return Q2012NarraTrigger
