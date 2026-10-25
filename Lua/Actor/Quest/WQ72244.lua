require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72244 = class("Quest72244", QuestActorProxy)
Quest72244.defaultAlias = "Quest72244"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72244:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72244:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7224401"] = self.OnSubStart7224401,
        ["7224402"] = self.OnSubStart7224402,
        ["7224403"] = self.OnSubStart7224403,
        ["7224404"] = self.OnSubStart7224404,
        ["7224405"] = self.OnSubStart7224405,
        ["7224406"] = self.OnSubStart7224406,
        ["7224407"] = self.OnSubStart7224407,
        ["7224408"] = self.OnSubStart7224408,
        ["7224409"] = self.OnSubStart7224409,
        ["7224410"] = self.OnSubStart7224410,
        ["7224411"] = self.OnSubStart7224411,
        ["7224412"] = self.OnSubStart7224412,
        ["7224413"] = self.OnSubStart7224413,
        ["7224414"] = self.OnSubStart7224414,
        ["7224415"] = self.OnSubStart7224415,
        ["7224416"] = self.OnSubStart7224416,
        ["7224424"] = self.OnSubStart7224424,
        ["7224423"] = self.OnSubStart7224423,
        ["7224425"] = self.OnSubStart7224425
    }
end

function Quest72244:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7224401"] = self.OnSubFinish7224401,
        ["7224402"] = self.OnSubFinish7224402,
        ["7224403"] = self.OnSubFinish7224403,
        ["7224404"] = self.OnSubFinish7224404,
        ["7224405"] = self.OnSubFinish7224405,
        ["7224406"] = self.OnSubFinish7224406,
        ["7224407"] = self.OnSubFinish7224407,
        ["7224408"] = self.OnSubFinish7224408,
        ["7224409"] = self.OnSubFinish7224409,
        ["7224410"] = self.OnSubFinish7224410,
        ["7224411"] = self.OnSubFinish7224411,
        ["7224412"] = self.OnSubFinish7224412,
        ["7224413"] = self.OnSubFinish7224413,
        ["7224414"] = self.OnSubFinish7224414,
        ["7224415"] = self.OnSubFinish7224415,
        ["7224416"] = self.OnSubFinish7224416,
        ["7224424"] = self.OnSubFinish7224424,
        ["7224423"] = self.OnSubFinish7224423,
        ["7224425"] = self.OnSubFinish7224425
    }
end

function Quest72244:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72244:Start()
    print("Start")
end

function Quest72244:OnDestroy()
    print("OnDestroy")
end

function Quest72244:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72244:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72244:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72244:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72244:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest72244:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72244:VanishPaimon()
    print("VanishPaimon")
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    globalActor:EnablePlayerInput(true)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 5)
end

function Quest72244:SummonPaimon(arg1)
    print("SummonPaimon")
    print("SummonPaimon")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, arg1, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest72244:OnSubStart7224401(arg1)
    print("OnSubStart7224401")
    self:NpcCreate(arg1, npcs.NPC20346Data.id, 1)
end

function Quest72244:OnSubFinish7224401(arg1)
    print("OnSubFinish7224401")
end

function Quest72244:OnSubStart7224402(arg1)
    print("OnSubStart7224402")
end

function Quest72244:OnSubFinish7224402(arg1)
    print("OnSubFinish7224402")
end

function Quest72244:OnSubStart7224403(arg1)
    print("OnSubStart7224403")
end

function Quest72244:OnSubFinish7224403(arg1)
    print("OnSubFinish7224403")
end

function Quest72244:OnSubStart7224404(arg1)
    print("OnSubStart7224404")
end

function Quest72244:OnSubFinish7224404(arg1)
    print("OnSubFinish7224404")
end

function Quest72244:OnSubStart7224405(arg1)
    print("OnSubStart7224405")
end

function Quest72244:OnSubFinish7224405(arg1)
    print("OnSubFinish7224405")
end

function Quest72244:OnSubStart7224406(arg1)
    print("OnSubStart7224406")
end

function Quest72244:OnSubFinish7224406(arg1)
    print("OnSubFinish7224406")
end

function Quest72244:OnSubStart7224407(arg1)
    print("OnSubStart7224407")
end

function Quest72244:OnSubFinish7224407(arg1)
    print("OnSubFinish7224407")
end

function Quest72244:OnSubStart7224408(arg1)
    print("OnSubStart7224408")
end

function Quest72244:OnSubFinish7224408(arg1)
    print("OnSubFinish7224408")
end

function Quest72244:OnSubStart7224409(arg1)
    print("OnSubStart7224409")
end

function Quest72244:OnSubFinish7224409(arg1)
    print("OnSubFinish7224409")
    self:NarratorOnlyTask(datas.paimeng7224409, nil, "")
end

function Quest72244:OnSubStart7224410(arg1)
    print("OnSubStart7224410")
end

function Quest72244:OnSubFinish7224410(arg1)
    print("OnSubFinish7224410")
    self:NpcDestroyWithDither(npcs.NPC20346Data.alias, 5)
end

function Quest72244:OnSubStart7224411(arg1)
    print("OnSubStart7224411")
    actorMgr:CreateActorWithPos("Q7224411Trigger", "Actor/Gadget/Q7224411Trigger", 70900002, 0, {x = 255.5738, y = 139.2506, z = -287.2847}, {x = 0, y = 0, z = 0}, true, false, 5)
    actorMgr:CreateActorWithPos("Q72244Trigger", "Actor/Gadget/Q72244Trigger", 70900002, 0, {x = 251.8924, y = 142.0058, z = -263.2102}, {x = 0, y = 0, z = 0}, true, false, 5)
end

function Quest72244:OnSubFinish7224411(arg1)
    print("OnSubFinish7224411")
    self:ActorDestroy("Q72244Trigger")
end

function Quest72244:OnSubStart7224412(arg1)
    print("OnSubStart7224412")
    self:PlayCutsceneIndex("7224401", function(arg1)
        arg1:FinishQuestID(false, 7224412)
    end, nil, nil, false)
end

function Quest72244:OnSubFinish7224412(arg1)
    print("OnSubFinish7224412")
end

function Quest72244:OnSubStart7224413(arg1)
    print("OnSubStart7224413")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.NPC20346Data.id, 1)
    end)
end

function Quest72244:OnSubFinish7224413(arg1)
    print("OnSubFinish7224413")
end

function Quest72244:OnSubStart7224414(arg1)
    print("OnSubStart7224414")
end

function Quest72244:OnSubFinish7224414(arg1)
    print("OnSubFinish7224414")
end

function Quest72244:OnSubStart7224415(arg1)
    print("OnSubStart7224415")
    actorMgr:CreateActorWithPos("Q7224415Trigger", "Actor/Gadget/Q7224415Trigger", 70900002, 0, {x = 249.8253, y = 145.543, z = -291.9882}, {x = 0, y = 0, z = 0}, true, false, 5)
end

function Quest72244:OnSubFinish7224415(arg1)
    print("OnSubFinish7224415")
end

function Quest72244:OnSubStart7224416(arg1)
    print("OnSubStart7224416")
end

function Quest72244:OnSubFinish7224416(arg1)
    print("OnSubFinish7224416")
end

function Quest72244:OnSubStart7224424(arg1)
    print("OnSubStart7224424")
    self:PlayCutsceneIndex("7224402", function(arg1)
        arg1:FinishQuestID(false, 7224424)
    end, nil, nil, false)
end

function Quest72244:OnSubFinish7224424(arg1)
    print("OnSubFinish7224424")
end

function Quest72244:OnSubStart7224423(arg1)
    print("OnSubStart7224423")
    self:EnablePlayerInput(false)
    self:SummonPaimon(7224423)
    self:EnablePlayerInput(true)
end

function Quest72244:OnSubFinish7224423(arg1)
    print("OnSubFinish7224423")
    self:VanishPaimon()
end

function Quest72244:OnSubStart7224425(arg1)
    print("OnSubStart7224425")
end

function Quest72244:OnSubFinish7224425(arg1)
    print("OnSubFinish7224425")
    self:NpcDestroyWithDither(npcs.NPC20346Data.alias, 5)
end

return Quest72244
