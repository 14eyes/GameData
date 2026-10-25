require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76085DeleteGuer = class("Q76085DeleteGuer", GadgetActorProxy)
Q76085DeleteGuer.defaultAlias = "Q76085DeleteGuer"
local Q76085ClientConfig = require("Quest/Client/Q76085ClientConfig")

local this
local subIDs = Q76085ClientConfig.SubIDs
local datas = Q76085ClientConfig.Datas
local npcs = Q76085ClientConfig.Npcs
local points = Q76085ClientConfig.Points

function Q76085DeleteGuer:OnPostDataPrepare()
    print("Q76085DeleteGuer - OnPostDataPrepare")
    this = self
end

function Q76085DeleteGuer:OnPostComponentPrepare()
    print("Q76085DeleteGuer - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76085)
end

function Q76085DeleteGuer:TriggerIn()
    print("Q76085DeleteGuer - TriggerIn")
end

function Q76085DeleteGuer:PreTriggerIn()
    print("Q76085DeleteGuer - PreTriggerIn")
end

function Q76085DeleteGuer:LightUpTriggerIn()
    print("Q76085DeleteGuer - LightUpTriggerIn")
end

function Q76085DeleteGuer:TriggerOut()
    print("Q76085DeleteGuer - TriggerOut")
    actorMgr:GetActor("76085"):DestroyQuestNpcActor(npcs.Npc1318.alias, 3)
    actorMgr:GetActor("76085"):CancelRangeStoryByQuest(117605200)
    this:DestroySelf()
end

return Q76085DeleteGuer
