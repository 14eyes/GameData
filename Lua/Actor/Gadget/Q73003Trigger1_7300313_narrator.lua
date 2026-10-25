require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73003Trigger1_7300313_narrator = class("Q73003Trigger1_7300313_narrator", GadgetActorProxy)
Q73003Trigger1_7300313_narrator.defaultAlias = "Q73003Trigger1_7300313_narrator"
local Q73003ClientConfig = require("Quest/Client/Q73003ClientConfig")

local subIDs = Q73003ClientConfig.SubIDs
local npcs = Q73003ClientConfig.Npcs
local datas = Q73003ClientConfig.Datas

function Q73003Trigger1_7300313_narrator:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73003Trigger1_7300313_narrator:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73003Trigger1_7300313_narrator:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73003"):NarratorOnlyTaskByData(datas.NarratorWithId)
    self:DestroySelf()
end

function Q73003Trigger1_7300313_narrator:TriggerOut()
    print("TriggerOut")
end

return Q73003Trigger1_7300313_narrator
