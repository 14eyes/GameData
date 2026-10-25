require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q301907Narrator = class("Q301907Narrator", GadgetActorProxy)
Q301907Narrator.defaultAlias = "Q301907Narrator"
local Q3019ClientConfig = require("Quest/Client/Q3019ClientConfig")

local subIDs = Q3019ClientConfig.SubIDs
local npcs = Q3019ClientConfig.Npcs
local datas = Q3019ClientConfig.Datas

function Q301907Narrator:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q301907Narrator:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q301907Narrator:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3019"):NarratorOnlyTaskByData(datas.IsakKaiche)
    self:DestroySelf()
end

function Q301907Narrator:TriggerOut()
    print("TriggerOut")
end

return Q301907Narrator
