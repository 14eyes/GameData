require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007011_Trigger = class("Q4007011_Trigger", GadgetActorProxy)
Q4007011_Trigger.defaultAlias = "Q4007011_Trigger"
local Q40070ClientConfig = require("Quest/Client/Q40070ClientConfig")

local subIDs = Q40070ClientConfig.SubIDs
local npcs = Q40070ClientConfig.Npcs
local datas = Q40070ClientConfig.Datas

function Q4007011_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007011_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007011_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007011)
    self:DestroySelf()
end

function Q4007011_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007011_Trigger
