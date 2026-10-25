require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40090 = class("Quest40090", QuestActorProxy)
Quest40090.defaultAlias = "Quest40090"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40090:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40090:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4009047"] = self.OnSubStart4009047,
        ["4009001"] = self.OnSubStart4009001,
        ["4009002"] = self.OnSubStart4009002,
        ["4009039"] = self.OnSubStart4009039,
        ["4009020"] = self.OnSubStart4009020,
        ["4009029"] = self.OnSubStart4009029,
        ["4009038"] = self.OnSubStart4009038,
        ["4009040"] = self.OnSubStart4009040,
        ["4009003"] = self.OnSubStart4009003,
        ["4009013"] = self.OnSubStart4009013,
        ["4009014"] = self.OnSubStart4009014,
        ["4009015"] = self.OnSubStart4009015,
        ["4009016"] = self.OnSubStart4009016,
        ["4009017"] = self.OnSubStart4009017,
        ["4009018"] = self.OnSubStart4009018,
        ["4009041"] = self.OnSubStart4009041,
        ["4009042"] = self.OnSubStart4009042,
        ["4009019"] = self.OnSubStart4009019,
        ["4009021"] = self.OnSubStart4009021,
        ["4009022"] = self.OnSubStart4009022,
        ["4009023"] = self.OnSubStart4009023,
        ["4009024"] = self.OnSubStart4009024,
        ["4009025"] = self.OnSubStart4009025,
        ["4009026"] = self.OnSubStart4009026,
        ["4009027"] = self.OnSubStart4009027,
        ["4009043"] = self.OnSubStart4009043,
        ["4009044"] = self.OnSubStart4009044,
        ["4009028"] = self.OnSubStart4009028,
        ["4009030"] = self.OnSubStart4009030,
        ["4009031"] = self.OnSubStart4009031,
        ["4009032"] = self.OnSubStart4009032,
        ["4009033"] = self.OnSubStart4009033,
        ["4009034"] = self.OnSubStart4009034,
        ["4009035"] = self.OnSubStart4009035,
        ["4009036"] = self.OnSubStart4009036,
        ["4009045"] = self.OnSubStart4009045,
        ["4009046"] = self.OnSubStart4009046,
        ["4009037"] = self.OnSubStart4009037,
        ["4009004"] = self.OnSubStart4009004,
        ["4009005"] = self.OnSubStart4009005,
        ["4009006"] = self.OnSubStart4009006,
        ["4009007"] = self.OnSubStart4009007,
        ["4009008"] = self.OnSubStart4009008,
        ["4009009"] = self.OnSubStart4009009,
        ["4009010"] = self.OnSubStart4009010,
        ["4009011"] = self.OnSubStart4009011,
        ["4009012"] = self.OnSubStart4009012
    }
end

function Quest40090:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4009047"] = self.OnSubFinish4009047,
        ["4009001"] = self.OnSubFinish4009001,
        ["4009002"] = self.OnSubFinish4009002,
        ["4009039"] = self.OnSubFinish4009039,
        ["4009020"] = self.OnSubFinish4009020,
        ["4009029"] = self.OnSubFinish4009029,
        ["4009038"] = self.OnSubFinish4009038,
        ["4009040"] = self.OnSubFinish4009040,
        ["4009003"] = self.OnSubFinish4009003,
        ["4009013"] = self.OnSubFinish4009013,
        ["4009014"] = self.OnSubFinish4009014,
        ["4009015"] = self.OnSubFinish4009015,
        ["4009016"] = self.OnSubFinish4009016,
        ["4009017"] = self.OnSubFinish4009017,
        ["4009018"] = self.OnSubFinish4009018,
        ["4009041"] = self.OnSubFinish4009041,
        ["4009042"] = self.OnSubFinish4009042,
        ["4009019"] = self.OnSubFinish4009019,
        ["4009021"] = self.OnSubFinish4009021,
        ["4009022"] = self.OnSubFinish4009022,
        ["4009023"] = self.OnSubFinish4009023,
        ["4009024"] = self.OnSubFinish4009024,
        ["4009025"] = self.OnSubFinish4009025,
        ["4009026"] = self.OnSubFinish4009026,
        ["4009027"] = self.OnSubFinish4009027,
        ["4009043"] = self.OnSubFinish4009043,
        ["4009044"] = self.OnSubFinish4009044,
        ["4009028"] = self.OnSubFinish4009028,
        ["4009030"] = self.OnSubFinish4009030,
        ["4009031"] = self.OnSubFinish4009031,
        ["4009032"] = self.OnSubFinish4009032,
        ["4009033"] = self.OnSubFinish4009033,
        ["4009034"] = self.OnSubFinish4009034,
        ["4009035"] = self.OnSubFinish4009035,
        ["4009036"] = self.OnSubFinish4009036,
        ["4009045"] = self.OnSubFinish4009045,
        ["4009046"] = self.OnSubFinish4009046,
        ["4009037"] = self.OnSubFinish4009037,
        ["4009004"] = self.OnSubFinish4009004,
        ["4009005"] = self.OnSubFinish4009005,
        ["4009006"] = self.OnSubFinish4009006,
        ["4009007"] = self.OnSubFinish4009007,
        ["4009008"] = self.OnSubFinish4009008,
        ["4009009"] = self.OnSubFinish4009009,
        ["4009010"] = self.OnSubFinish4009010,
        ["4009011"] = self.OnSubFinish4009011,
        ["4009012"] = self.OnSubFinish4009012
    }
end

function Quest40090:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4009003"] = self.OnSubFailed4009003,
        ["4009021"] = self.OnSubFailed4009021,
        ["4009030"] = self.OnSubFailed4009030
    }
end

function Quest40090:Start()
    print("Start")
end

function Quest40090:OnDestroy()
    print("OnDestroy")
end

function Quest40090:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40090:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40090:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DisableMainPageWithConfig(false, "DisableActionPanel")
    self:ClearAllScaryThings()
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12945Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1040Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1033Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12944Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12969Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12970Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12941Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12942Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12943Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13101Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13012Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13098Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1057Data.alias, 3)
    actorMgr:DestroyEntityActor("Q40090FollowFail", 0, false)
    actorMgr:DestroyEntityActor("Q40090Scary1", 0, false)
    actorMgr:DestroyEntityActor("Q40090Scary2", 0, false)
    actorMgr:DestroyEntityActor("Q40090Scary3", 0, false)
    actorMgr:DestroyEntityActor("Q40090Scary4", 0, false)
    actorMgr:DestroyEntityActor("Q40090Scary4_1", 0, false)
    actorMgr:DestroyEntityActor("Q40090Scary5", 0, false)
    actorMgr:DestroyEntityActor("Q40090Scary6", 0, false)
    actorMgr:DestroyEntityActor("Q40090Scary6_1", 3, false)
    actorMgr:DestroyEntityActor("Q40090Scary6_2", 0, false)
    actorMgr:DestroyEntityActor("Q40090Scary7", 0, false)
    actorMgr:DestroyEntityActor("Q40090Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q40090Trigger1", 0, false)
    actorMgr:DestroyEntityActor("Q40090Trigger2", 0, false)
    actorMgr:DestroyEntityActor("Q40090Trigger3", 0, false)
    actorMgr:DestroyEntityActor("Q4009001", 3, false)
end

function Quest40090:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40090:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        local questVar = self:GetQuestVar(4009039, 0)
        if questVar == 0 then
            self:SetQuestVarByMainId(0, 1)
        elseif questVar == 2 then
            self:SetQuestVarByMainId(0, 4)
        elseif questVar == 3 then
            self:SetQuestVarByMainId(0, 5)
        elseif questVar == 6 then
            self:SetQuestVarByMainId(0, 7)
        end
    end

    if arg1 == 2 then
        local questVar = self:GetQuestVar(4009039, 0)
        if questVar == 0 then
            self:SetQuestVarByMainId(0, 2)
        elseif questVar == 1 then
            self:SetQuestVarByMainId(0, 4)
        elseif questVar == 3 then
            self:SetQuestVarByMainId(0, 6)
        elseif questVar == 5 then
            self:SetQuestVarByMainId(0, 7)
        end
    end

    if arg1 == 3 then
        local questVar = self:GetQuestVar(4009039, 0)
        if questVar == 0 then
            self:SetQuestVarByMainId(0, 3)
        elseif questVar == 1 then
            self:SetQuestVarByMainId(0, 5)
        elseif questVar == 2 then
            self:SetQuestVarByMainId(0, 6)
        elseif questVar == 4 then
            self:SetQuestVarByMainId(0, 7)
        end
    end

    if arg1 == 4 then
        actorUtils.FinishQuestID(false, 4009039)
        self:SetQuestVarByMainId(1, 1)
    end

    if arg1 == 5 then
        actorUtils.FinishQuestID(false, 4009039)
        self:SetQuestVarByMainId(1, 2)
    end

    if arg1 == 6 then
        actorUtils.FinishQuestID(false, 4009039)
        self:SetQuestVarByMainId(1, 3)
    end

    if arg1 == 11 then
        self:GetQuestNpcActor(npcs.Npc1035Data.alias):ClearNpcFollowTask()
        self:RemoveLocalGadget(70900201, "1")
        self:RemoveLocalGadget(70710470, "4")
    end

    if arg1 == 12 then
        self:GetQuestNpcActor(npcs.Npc1040Data.alias):ClearNpcFollowTask()
        self:RemoveLocalGadget(70900201, "1")
        self:RemoveLocalGadget(70710470, "4")
    end

    if arg1 == 13 then
        self:GetQuestNpcActor(npcs.Npc1033Data.alias):ClearNpcFollowTask()
        self:RemoveLocalGadget(70900201, "1")
        self:RemoveLocalGadget(70710470, "4")
    end
end

function Quest40090:CreateAllScareTrigger()
    print("CreateAllScareTrigger")
    actorMgr:CreateActorWithPos("Q40090Scary1", "Actor/Gadget/Q40090Scary1", 70900002, 0, {x = -2791.358, y = 226.539, z = -4482.44}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q40090Scary2", "Actor/Gadget/Q40090Scary2", 70900002, 0, {x = -2744.004, y = 232.102, z = -4494.244}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q40090Scary3", "Actor/Gadget/Q40090Scary3", 70900002, 0, {x = -2757.035, y = 226.354, z = -4483.201}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q40090Scary4_1", "Actor/Gadget/Q40090Scary4_1", 70900002, 0, {x = -2706.761, y = 233.088, z = -4461.247}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q40090Scary5", "Actor/Gadget/Q40090Scary5", 70900002, 0, {x = -2753.609, y = 226.281, z = -4459.051}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q40090Scary6", "Actor/Gadget/Q40090Scary6", 70900002, 0, {x = -2781.878, y = 225.379, z = -4430.457}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q40090Scary7", "Actor/Gadget/Q40090Scary7", 70900002, 0, {x = -2748.958, y = 227.183, z = -4442.325}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest40090:DestroyAllScareTrigger()
    print("DestroyAllScareTrigger")
    this:ActorDestroy("Q40090Scary1")
    this:ActorDestroy("Q40090Scary2")
    this:ActorDestroy("Q40090Scary3")
    this:ActorDestroy("Q40090Scary4")
    this:ActorDestroy("Q40090Scary4_1")
    this:ActorDestroy("Q40090Scary5")
    this:ActorDestroy("Q40090Scary6")
    this:ActorDestroy("Q40090Scary7")
end

function Quest40090:YomiyaFollow()
    print("YomiyaFollow")
    self:NpcFollow(npcs.Npc1035Data.alias, datas.YomiyaIdle, datas.YomiyaWarning)
end

function Quest40090:GhostAkebia(arg1, arg2)
    print("GhostAkebia")
    self.CreateLocalGadget(self, 70290739, arg1, arg2, {x = 0, y = 0, z = 0}, 3, nil, nil, 0, true)
    self.SetLocalGadgetState(self, 70290739, arg1, 201)
    self.CallDelay(self, 2, function()
        self:SetLocalGadgetState(70290739, arg1, 0)
        self:CallDelay(4, function()
            self:RemoveLocalGadget(70290739, arg1)
        end)
    end)
end

function Quest40090:Scary5Active()
    print("Scary5Active")
    self:SetLocalGadgetState(70290741, "1", 201)
    self:SetLocalGadgetState(70290755, "1", 201)
    self:SetLocalGadgetState(70290665, "1", 0)
end

function Quest40090:PosRelatedPlayer(arg1, arg2, arg3)
    print("PosRelatedPlayer")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    return {
        x = avatarPos.x + avatarForward.x * arg1,
        y = avatarPos.y + arg2,
        z = avatarPos.z + avatarForward.z * arg3
    }
end

function Quest40090:PosRelatedNpc(arg1, arg2, arg3, arg4)
    print("PosRelatedNpc")
    local questNpcActor = self:GetQuestNpcActor(arg4)
    local pos = questNpcActor:GetPos()
    local forward = questNpcActor:GetForward()
    return {x = pos.x + forward.x * arg1, y = pos.y + arg2, z = pos.z + forward.z * arg3}
end

function Quest40090:GhostLantern(arg1, arg2)
    print("GhostLantern")
    self.CreateLocalGadget(self, 70290738, arg1, arg2, {x = 0, y = 0, z = 0}, 3, nil, nil, 0, true)
    self.SetLocalGadgetState(self, 70290738, arg1, 201)
    self.CallDelay(self, 2, function()
        self:SetLocalGadgetState(70290738, arg1, 0)
        self:CallDelay(4, function()
            self:RemoveLocalGadget(70290738, arg1)
        end)
    end)
end

function Quest40090:NpcFollowGadget(arg1)
    local pos = self:GetQuestNpcActor(arg1):GetPos()
    pos.y = pos.y + 1.8
    this:CreateLocalGadget(70900201, "1", pos, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, false)
end

function Quest40090:NpcFollow(arg1, arg2, arg3)
    print("NpcFollow")
    self.GetQuestNpcActor(self, arg1):NpcFollowTask(40090, "", {
        isWalkOnly = false,
        tickInternal = 0.5,
        walkToPathLength = 2,
        waitPathLength = 1,
        npcSafePolygon = "Inazuma_kimota_002",
        npcSafeResumeDist = 10,
        warningLength = 40,
        accessFailLength = 50,
        maxFailLength = 60,
        failMaxCount = 5,
        playerIdleTime = 5
    }, nil, nil, function()
        local questNpcActor = self:GetQuestNpcActor(arg1)
        if datas.NarratorTag == 0 then
            if math.random(1, 2) == 1 then
                questNpcActor:NarratorOnlyTaskByData(arg2)
            end
        end
    end, function()
        local questNpcActor = self:GetQuestNpcActor(arg1)
        this:UnCallFunc(self.NpcFollowGadget)
        questNpcActor:NarratorOnlyTaskByData(arg3)
        local pos = questNpcActor:GetPos()
        actorMgr:CreateActorWithPos("Q40090FollowFail", "Actor/Gadget/Q40090FollowFail", 70900002, 0, pos, {x = 0.0, y = 0.0, z = 0.0}, true, false)
        this:ShowTextMapWithParam("QUEST_Message_Q4008902")
        this:NpcResetForceAvatarWalk(questNpcActor)
        this:CallDelay(1, function()
            this:NpcFollowGadget(arg1)
        end)
    end, function()
        datas.NarratorTag = 0
        actorMgr:DestroyEntityActor("Q40090FollowFail", 0, false)
        this:RemoveLocalGadget(70900201, "1")
        this:CallDelay(1.2, function()
            this:RemoveLocalGadget(70900201, "1")
        end)
    end)
end

function Quest40090:SayuFollow()
    print("SayuFollow")
    self:NpcFollow(npcs.Npc1040Data.alias, datas.SayuIdle, datas.SayuWarning)
end

function Quest40090:CreateShop1()
    print("CreateShop1")
    self:CreateLocalGadget(70290747, "1", datas.ShopPos1, datas.ShopRot1, 3, nil, nil, true)
    self:CreateLocalGadget(70290754, "1", datas.ShopPos1, datas.ShopRot1, 3, nil, nil, true)
    self:SetLocalGadgetState(70290747, "1", 201)
    self:SetLocalGadgetState(70290754, "1", 201)
end

function Quest40090:CreateShop2()
    print("CreateShop2")
    self:CreateLocalGadget(70290747, "2", datas.ShopPos2, datas.ShopRot2, 3, nil, nil, true)
    self:CreateLocalGadget(70290754, "2", datas.ShopPos2, datas.ShopRot2, 3, nil, nil, true)
    self:SetLocalGadgetState(70290747, "2", 201)
    self:SetLocalGadgetState(70290754, "2", 201)
    self:SetLocalGadgetState(70290747, "1", 0)
    self:SetLocalGadgetState(70290754, "1", 0)
end

function Quest40090:CreateShop3()
    print("CreateShop3")
    self:CreateLocalGadget(70290747, "3", datas.ShopPos3, datas.ShopRot3, 3, nil, nil, true)
    self:CreateLocalGadget(70290754, "3", datas.ShopPos3, datas.ShopRot3, 3, nil, nil, true)
    self:SetLocalGadgetState(70290747, "3", 201)
    self:SetLocalGadgetState(70290754, "3", 201)
    self:SetLocalGadgetState(70290747, "2", 0)
    self:SetLocalGadgetState(70290754, "2", 0)
end

function Quest40090:ClearAllScaryThings()
    print("ClearAllScaryThings")
    self.ActorDestroy(self, "Q40090Scary1")
    self.ActorDestroy(self, "Q40090Scary2")
    self.ActorDestroy(self, "Q40090Scary3")
    self.ActorDestroy(self, "Q40090Scary4")
    self.ActorDestroy(self, "Q40090Scary4_1")
    self.ActorDestroy(self, "Q40090Scary5")
    self.ActorDestroy(self, "Q40090Scary6")
    self.ActorDestroy(self, "Q40090Scary6_1")
    self.ActorDestroy(self, "Q40090Scary6_2")
    self.ActorDestroy(self, "Q40090Scary7")
    self.ActorDestroy(self, "Q40090FollowFail")
    self.RemoveLocalGadget(self, 70290741, "1")
    self.RemoveLocalGadget(self, 70290755, "1")
    self.RemoveLocalGadget(self, 70290665, "1")
    self.RemoveLocalGadget(self, 70290744, "1")
    self.RemoveLocalGadget(self, 70290745, "1")
    self.SetLocalGadgetState(self, 70290737, "1", 202)
    self.SetLocalGadgetState(self, 70290752, "2", 202)
    self.SetLocalGadgetState(self, 70290752, "3", 202)
    self.SetLocalGadgetState(self, 70290737, "4", 202)
    self.CallDelay(self, 4, function()
        self:SetLocalGadgetState(70290737, "1", 202)
        self:SetLocalGadgetState(70290752, "2", 202)
        self:SetLocalGadgetState(70290752, "3", 202)
        self:SetLocalGadgetState(70290737, "4", 202)
        self:RemoveLocalGadget(70290737, "1")
        self:RemoveLocalGadget(70290752, "2")
        self:RemoveLocalGadget(70290752, "3")
        self:RemoveLocalGadget(70290737, "4")
        self:SetLocalGadgetState(70290737, "1", 0)
        self:SetLocalGadgetState(70290752, "2", 0)
        self:SetLocalGadgetState(70290752, "3", 0)
        self:SetLocalGadgetState(70290737, "4", 0)
    end)

    self.RemoveLocalGadget(self, 70290747, "1")
    self.RemoveLocalGadget(self, 70290747, "2")
    self.RemoveLocalGadget(self, 70290747, "3")
    self.RemoveLocalGadget(self, 70290754, "1")
    self.RemoveLocalGadget(self, 70290754, "2")
    self.RemoveLocalGadget(self, 70290754, "3")
    self.RemoveLocalGadget(self, 70900201, "1")
    self.CallDelay(self, 1.2, function()
        self:RemoveLocalGadget(70900201, "1")
    end)

    self.RemoveLocalGadget(self, 70710470, "1")
    self.RemoveLocalGadget(self, 70710470, "2")
    self.RemoveLocalGadget(self, 70710470, "3")
    self.RemoveLocalGadget(self, 70710470, "4")
end

function Quest40090:TohmaFollow()
    print("TohmaFollow")
    self:NpcFollow(npcs.Npc1033Data.alias, datas.TohmaIdle, datas.TohmaWarning)
end

function Quest40090:NarratorNoSafeFinish(arg1, callback, arg3)
    print("NarratorNoSafeFinish")
    self:NarratorOnlyTaskByData(arg1, function(arg1, arg2)
        if callback ~= nil then
            callback()
        end
    end, 40090)
end

function Quest40090:FollowPrepare()
    self:CreateAllScareTrigger()
    self:CreateLocalGadget(70290741, "1", datas.Catstatue1Pos, datas.Catstatue1Rot, 3, nil, nil, true)
    self:CreateLocalGadget(70290755, "1", datas.Catstatue2Pos, datas.Catstatue2Rot, 3, nil, nil, true)
    self:CreateLocalGadget(70290665, "1", datas.CandlePos, datas.CandleRot, 3, nil, nil, true)
    self:SetLocalGadgetState(70290665, "1", 201)
    self:CreateLocalGadget(70290744, "1", datas.FanPos, datas.FanRot, 3, nil, nil, true)
    self:CreateLocalGadget(70710470, "4", {x = -2737.356, y = 232.0354, z = -4432.24}, {x = 0, y = 0, z = 0}, 3, nil, nil, false)
    if self:GetSubQuestState(4009020) == 2 then
        self:CreateLocalGadget(70710470, "1", {x = -2716.984, y = 239.3941, z = -4490.937}, {x = 0, y = 0, z = 0}, 3, nil, nil, false)
    end

    if self:GetSubQuestState(4009029) == 2 then
        self:CreateLocalGadget(70710470, "2", {x = -2707.659, y = 236.0335, z = -4460.616}, {x = 0, y = 0, z = 0}, 3, nil, nil, false)
    end

    if self:GetSubQuestState(4009038) == 2 then
        self:CreateLocalGadget(70710470, "3", {x = -2784.231, y = 224.2206, z = -4427.437}, {x = 0, y = 0, z = 0}, 3, nil, nil, false)
    end

    self:CreateShop1()
end

function Quest40090:FollowFail()
    print("FollowFail")
    self.ShowBlackScreenWithDialogText(self, 0.5, 3, 0.5, function()
        self:ClearNarratorTask()
        self:StopNarrator()
        self:DisableMainPageWithConfig(false, "DisableActionPanel")
        self:ClearAllScaryThings()
        self:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
        self:SafeDestroyQuestNpc(npcs.Npc1040Data.alias, 3)
        self:SafeDestroyQuestNpc(npcs.Npc1033Data.alias, 3)
    end, nil, nil, 400909911, false, true)
end

function Quest40090:OnSubStart4009047(arg1)
    print("OnSubStart4009047")
end

function Quest40090:OnSubFinish4009047(arg1)
    print("OnSubFinish4009047")
end

function Quest40090:OnSubStart4009001(arg1)
    print("OnSubStart4009001")
    this:CreateQuestNpcWithTrigger("Q4009001", 4009001, 1044, 0, 6)
    this:CreateQuestNpc(arg1, npcs.Npc12945Data.id, 2)
    if self.GetQuestVar(self, 4009001, 2) ~= 1 then
        self.ActionSafeCall(self, function()
            self:AfterMainPageActiveSafeCall(function()
                if self:GetSubQuestState(302901) ~= 2 then
                    self:NarratorOnlyTaskByData(datas.NarratorWithId)
                end
            end)
        end)
    end

    this:CreateQuestNpc(arg1, npcs.Npc13098Data.id, 0)
end

function Quest40090:OnSubFinish4009001(arg1)
    print("OnSubFinish4009001")
    this:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    this:ClearNarratorTask()
end

function Quest40090:OnSubStart4009002(arg1)
    print("OnSubStart4009002")
end

function Quest40090:OnSubFinish4009002(arg1)
    print("OnSubFinish4009002")
end

function Quest40090:OnSubStart4009039(arg1)
    print("OnSubStart4009039")
    this:CreateQuestNpc(arg1, npcs.Npc1035Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1040Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1033Data.id, 0)
end

function Quest40090:OnSubFinish4009039(arg1)
    print("OnSubFinish4009039")
    this:ActionSafeCall(function(arg1)
        this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            this:DestroyQuestNpcActor(npcs.Npc1035Data.alias, 3)
            this:DestroyQuestNpcActor(npcs.Npc1040Data.alias, 3)
            this:DestroyQuestNpcActor(npcs.Npc1033Data.alias, 3)
        end, nil, nil, 0, false, true)
    end)
end

function Quest40090:OnSubStart4009020(arg1)
    print("OnSubStart4009020")
end

function Quest40090:OnSubFinish4009020(arg1)
    print("OnSubFinish4009020")
    self:RemoveLocalGadget(70710470, "1")
    if datas.NarratorTag == 0 then
        self:NarratorOnlyTaskByData(datas.OpenChest1)
    end
end

function Quest40090:OnSubStart4009029(arg1)
    print("OnSubStart4009029")
end

function Quest40090:OnSubFinish4009029(arg1)
    print("OnSubFinish4009029")
    self:RemoveLocalGadget(70710470, "2")
    if datas.NarratorTag == 0 then
        self:NarratorOnlyTaskByData(datas.OpenChest2)
    end
end

function Quest40090:OnSubStart4009038(arg1)
    print("OnSubStart4009038")
end

function Quest40090:OnSubFinish4009038(arg1)
    print("OnSubFinish4009038")
    self:RemoveLocalGadget(70710470, "3")
    if datas.NarratorTag == 0 then
        self:NarratorOnlyTaskByData(datas.OpenChest3)
    end
end

function Quest40090:OnSubStart4009040(arg1)
    print("OnSubStart4009040")
end

function Quest40090:OnSubFinish4009040(arg1)
    print("OnSubFinish4009040")
end

function Quest40090:OnSubStart4009003(arg1)
    print("OnSubStart4009003")
    self:CreateQuestNpc(arg1, npcs.Npc13101Data.id, 0)
    datas.NarratorTag = 0
    self:FollowPrepare()
    self:ActionSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1035Data.id, 0)
            local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc1035Data.alias)
            arg1_2:YomiyaFollow()
            arg1_2:DisableMainPageWithConfig(true, "DisableActionPanel")
        end)
    end)
end

function Quest40090:OnSubFinish4009003(arg1)
    print("OnSubFinish4009003")
    self:ClearNarratorTask()
    self:StopNarrator()
    this:SafeDestroyQuestNpc(npcs.Npc12945Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1040Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1033Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId1)
        this:ClearAllScaryThings()
        arg1:DisableMainPageWithConfig(false, "DisableActionPanel")
    end)
end

function Quest40090:OnSubFailed4009003(arg1)
    print("OnSubFailed4009003")
    self:FollowFail()
end

function Quest40090:OnSubStart4009013(arg1)
    print("OnSubStart4009013")
end

function Quest40090:OnSubFinish4009013(arg1)
    print("OnSubFinish4009013")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1035Data.alias)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CallDelay(self, 1.6, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
        questNpcActor:ClearNpcFollowTask()
        questNpcActor:DoFreeStyle(1040)
        self:NarratorNoSafeFinish(datas.Yomiya1_1, function()
            self:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1280)
            self:NarratorNoSafeFinish(datas.Yomiya1_2, function()
                local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
                self:SetLocalGadgetState(70290737, "1", 202)
                questNpcActor:DoFreeStyle(1200)
                self:CallDelay(0.5, function()
                    self:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(4031)
                end)

                self:CallDelay(1.5, function()
                    self:YomiyaFollow()
                end)

                self:NarratorNoSafeFinish(datas.Yomiya1_3, function()
                    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
                    self:NpcResetForceAvatarWalk(questNpcActor)
                    datas.NarratorTag = 0
                end)
            end)
        end)
    end)

    self.CallDelay(self, 1.5, function()
        local posRelatedNpc = self:PosRelatedNpc(1.3, 0, 1.1, npcs.Npc1035Data.alias)
        local n = math.random(10, 170)
        self:CreateLocalGadget(70290737, "1", posRelatedNpc, {x = 0.0, y = n, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 2.1, function()
        local posRelatedPlayer = self:PosRelatedPlayer(2.86, 0, 1.86)
        local n = math.random(190, 350)
        self:CreateLocalGadget(70290752, "2", posRelatedPlayer, {x = 0.0, y = n, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 2.8, function()
        local posRelatedNpc = self:PosRelatedNpc(-1.86, 0, 2.86, npcs.Npc1035Data.alias)
        local n = math.random(10, 170)
        self:CreateLocalGadget(70290752, "3", posRelatedNpc, {x = 0.0, y = n, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 3.6, function()
        local posRelatedNpc = self:PosRelatedNpc(1.33, 0, -1.65, npcs.Npc1035Data.alias)
        local n = math.random(190, 350)
        self:CreateLocalGadget(70290737, "4", posRelatedNpc, {x = 0.0, y = n, z = 0.0}, 3, nil, nil, 0, true)
    end)
end

function Quest40090:OnSubStart4009014(arg1)
    print("OnSubStart4009014")
end

function Quest40090:OnSubFinish4009014(arg1)
    print("OnSubFinish4009014")
    datas.NarratorTag = 1
    local tbl = {}
    tbl.x = -2743.949
    tbl.y = 232.1268
    tbl.z = -4494.536
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1035Data.alias)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CreateQuestNpc(self, arg1, npcs.Npc13012Data.id)
    local v = self.GetQuestNpcActor(self, npcs.Npc13012Data.alias)
    questNpcActor:ClearNpcFollowTask()
    questNpcActor:DoFreeStyle(1190)
    v:PlayAudio("Play_sfx_quest_EQ_DaZhuanKuai_cat_foley")
    self.NarratorNoSafeFinish(self, datas.Yomiya2_1, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
        self:NpcRunToTaskEasy(questNpcActor, tbl, function(arg1, arg2)
            local pos = questNpcActor:GetPos()
            local n = datas.ShrinePos - pos
            questNpcActor:SteerToTask(n, 1, true, true)
            self:CallDelay(1.1, function()
                self:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1190)
            end)
        end)

        self:NarratorNoSafeFinish(datas.Yomiya2_2, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
            local n = actorUtils.GetAvatarPos() - questNpcActor:GetPos()
            questNpcActor:SteerToTask(n, 1, true, true)
            self:CallDelay(1.1, function()
                self:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1060)
            end)

            self:NarratorNoSafeFinish(datas.Yomiya2_3, function()
                self:NarratorNoSafeFinish(datas.Yomiya2_4, function()
                    local questNpcActor = self:GetQuestNpcActor(npcs.Npc13012Data.alias)
                    local v = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
                    questNpcActor:PlayAudio("Play_vo_creature_cat_common")
                    self:NarratorNoSafeFinish(datas.Yomiya2_5, function()
                        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
                        self:NpcResetForceAvatarWalk(questNpcActor)
                        datas.NarratorTag = 0
                    end)

                    self:YomiyaFollow()
                end)
            end)
        end)
    end)
end

function Quest40090:OnSubStart4009015(arg1)
    print("OnSubStart4009015")
end

function Quest40090:OnSubFinish4009015(arg1)
    print("OnSubFinish4009015")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1035Data.alias)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CallDelay(self, 3, function()
        questNpcActor:ClearNpcFollowTask()
        questNpcActor:DoFreeStyle(1190)
        self:NarratorNoSafeFinish(datas.Yomiya3_1, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
            self:NpcResetForceAvatarWalk(questNpcActor)
            datas.NarratorTag = 0
        end)
    end)

    self.CallDelay(self, 6, function()
        self:YomiyaFollow()
    end)

    self.CallDelay(self, 1, function()
        local posRelatedNpc = self:PosRelatedNpc(1, 1.5, 1.2, npcs.Npc1035Data.alias)
        self:GhostAkebia("1", posRelatedNpc)
    end)

    self.CallDelay(self, 2.5, function()
        local posRelatedNpc = self:PosRelatedNpc(1.6, 1.5, 0.8, npcs.Npc1035Data.alias)
        self:GhostAkebia("2", posRelatedNpc)
    end)

    self.CallDelay(self, 4, function()
        local posRelatedPlayer = self:PosRelatedPlayer(-1.2, 1.5, 0.6)
        self:GhostAkebia("3", posRelatedPlayer)
    end)

    self.CallDelay(self, 5.5, function()
        local posRelatedNpc = self:PosRelatedNpc(-0.3, 1.5, 1.1, npcs.Npc1035Data.alias)
        self:GhostAkebia("4", posRelatedNpc)
    end)

    self.CallDelay(self, 7, function()
        local posRelatedPlayer = self:PosRelatedPlayer(-1.3, 1.5, 2.1)
        self:GhostAkebia("5", posRelatedPlayer)
    end)

    self.CallDelay(self, 8.5, function()
        local posRelatedNpc = self:PosRelatedNpc(1.3, 1.5, -1.1, npcs.Npc1035Data.alias)
        self:GhostAkebia("6", posRelatedNpc)
    end)

    self.CallDelay(self, 10, function()
        local posRelatedNpc = self:PosRelatedNpc(-1.6, 1.5, -1.7, npcs.Npc1035Data.alias)
        self:GhostAkebia("7", posRelatedNpc)
    end)
end

function Quest40090:OnSubStart4009016(arg1)
    print("OnSubStart4009016")
end

function Quest40090:OnSubFinish4009016(arg1)
    print("OnSubFinish4009016")
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1035Data.alias)
    datas.NarratorTag = 1
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CallDelay(self, 1, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
        questNpcActor:ClearNpcFollowTask()
        local pos = questNpcActor:GetPos()
        local n = datas.ShadowPos - pos
        questNpcActor:SteerToTask(n, 1, true, true)
        self:CallDelay(1.1, function()
            self:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1190)
        end)
    end)

    self.EnterSceneLookCamera(self, {x = -2728.841, y = 233.008, z = -4478.661}, 0, 3, true, true)
    self.NarratorNoSafeFinish(self, datas.Yomiya4_1, function()
        self:YomiyaFollow()
        self:NarratorNoSafeFinish(datas.Yomiya4_2, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
            self:NpcResetForceAvatarWalk(questNpcActor)
            datas.NarratorTag = 0
        end)
    end)
end

function Quest40090:OnSubStart4009017(arg1)
    print("OnSubStart4009017")
end

function Quest40090:OnSubFinish4009017(arg1)
    print("OnSubFinish4009017")
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1035Data.alias)
    datas.NarratorTag = 1
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.NarratorNoSafeFinish(self, datas.Yomiya5_1, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
        questNpcActor:ClearNpcFollowTask()
        questNpcActor:DoFreeStyle(1343)
        self:CallDelay(3, function()
            self:Scary5Active()
            self:CallDelay(2, function()
                local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
                local n = {x = -2756.731, y = 226.1267, z = -4455.987} - questNpcActor:GetPos()
                questNpcActor:SteerToTask(n, 1, true, true)
            end)
        end)

        self:NarratorNoSafeFinish(datas.Yomiya5_2, function()
            self:NarratorNoSafeFinish(datas.Yomiya5_3)
            self:YomiyaFollow()
            self:CallDelay(2, function()
                local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
                self:NpcResetForceAvatarWalk(questNpcActor)
                datas.NarratorTag = 0
            end)
        end)
    end)
end

function Quest40090:OnSubStart4009018(arg1)
    print("OnSubStart4009018")
end

function Quest40090:OnSubFinish4009018(arg1)
    print("OnSubFinish4009018")
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1035Data.alias)
    datas.NarratorTag = 1
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    questNpcActor.ClearNpcFollowTask(questNpcActor)
    self.NpcRunToTaskEasy(self, questNpcActor, {x = -2780.284, y = 224.617, z = -4432.039}, function(arg1, arg2)
        local pos = questNpcActor:GetPos()
        local n = datas.ShopPos1 - pos
        questNpcActor:SteerToTask(n, 1, true, true)
        self:CallDelay(1.1, function()
            self:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1120)
        end)
    end)

    self.NarratorNoSafeFinish(self, datas.Yomiya6_1, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
        actorMgr:CreateActorWithPos("Q40090Scary6_1", "Actor/Gadget/Q40090Scary6_1", 70900002, 0, {x = -2771.562, y = 223.9641, z = -4441.918}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
        self:YomiyaFollow()
        self:NpcResetForceAvatarWalk(questNpcActor)
        datas.NarratorTag = 0
    end)
end

function Quest40090:OnSubStart4009041(arg1)
    print("OnSubStart4009041")
end

function Quest40090:OnSubFinish4009041(arg1)
    print("OnSubFinish4009041")
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1035Data.alias)
    datas.NarratorTag = 1
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.EnterSceneLookCamera(self, {x = -2772.542, y = 226.669, z = -4440.992}, 0, 3, true, true)
    self.CreateShop2(self)
    self.CallDelay(self, 1, function()
        self:NarratorNoSafeFinish(datas.Yomiya6_2, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
            actorMgr:CreateActorWithPos("Q40090Scary6_2", "Actor/Gadget/Q40090Scary6_2", 70900002, 0, {x = -2763.857, y = 225.716, z = -4436.412}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
            self:YomiyaFollow()
            self:NpcResetForceAvatarWalk(questNpcActor)
            datas.NarratorTag = 0
        end)

        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
        questNpcActor:ClearNpcFollowTask()
        local pos = questNpcActor:GetPos()
        local n = datas.ShopPos2 - pos
        questNpcActor:SteerToTask(n, 1, true, true)
        self:CallDelay(1.1, function()
            self:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1190)
        end)
    end)
end

function Quest40090:OnSubStart4009042(arg1)
    print("OnSubStart4009042")
end

function Quest40090:OnSubFinish4009042(arg1)
    print("OnSubFinish4009042")
    self.CallDelay(self, 1, function()
        self:NarratorNoSafeFinish(datas.Yomiya6_3)
    end)

    self.EnterSceneLookCamera(self, {x = -2763.01, y = 227.511, z = -4436.944}, 0, 3, true, true)
    self.CreateShop3(self)
end

function Quest40090:OnSubStart4009019(arg1)
    print("OnSubStart4009019")
end

function Quest40090:OnSubFinish4009019(arg1)
    print("OnSubFinish4009019")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1035Data.alias)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CallDelay(self, 3, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
        questNpcActor:ClearNpcFollowTask()
        questNpcActor:DoFreeStyle(1230)
        self:NarratorNoSafeFinish(datas.Yomiya7_1, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1035Data.alias)
            self:NpcResetForceAvatarWalk(questNpcActor)
            datas.NarratorTag = 0
        end)
    end)

    self.CallDelay(self, 6, function()
        self:YomiyaFollow()
    end)

    self.CallDelay(self, 1, function()
        local posRelatedNpc = self:PosRelatedNpc(1, 1.5, 1.2, npcs.Npc1035Data.alias)
        self:GhostLantern("1", posRelatedNpc)
    end)

    self.CallDelay(self, 2.5, function()
        local posRelatedNpc = self:PosRelatedNpc(1.6, 1.5, 0.8, npcs.Npc1035Data.alias)
        self:GhostLantern("2", posRelatedNpc)
    end)

    self.CallDelay(self, 4, function()
        local posRelatedPlayer = self:PosRelatedPlayer(-1.2, 1.5, 0.6)
        self:GhostLantern("3", posRelatedPlayer)
    end)

    self.CallDelay(self, 5.5, function()
        local posRelatedNpc = self:PosRelatedNpc(-0.3, 1.5, 1.1, npcs.Npc1035Data.alias)
        self:GhostLantern("4", posRelatedNpc)
    end)

    self.CallDelay(self, 7, function()
        local posRelatedPlayer = self:PosRelatedPlayer(-1.3, 1.5, 2.1)
        self:GhostLantern("5", posRelatedPlayer)
    end)

    self.CallDelay(self, 8.5, function()
        local posRelatedNpc = self:PosRelatedNpc(1.3, 1.5, -1.1, npcs.Npc1035Data.alias)
        self:GhostLantern("6", posRelatedNpc)
    end)

    self.CallDelay(self, 10, function()
        local posRelatedNpc = self:PosRelatedNpc(-1.6, 1.5, -1.7, npcs.Npc1035Data.alias)
        self:GhostLantern("7", posRelatedNpc)
    end)
end

function Quest40090:OnSubStart4009021(arg1)
    print("OnSubStart4009021")
    self:CreateQuestNpc(arg1, npcs.Npc13101Data.id, 0)
    datas.NarratorTag = 0
    self:FollowPrepare()
    self:ActionSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1040Data.id, 0)
            arg1_2:SayuFollow()
            arg1_2:DisableMainPageWithConfig(true, "DisableActionPanel")
        end)
    end)
end

function Quest40090:OnSubFinish4009021(arg1)
    print("OnSubFinish4009021")
    self.ClearNarratorTask(self)
    self.StopNarrator(self)
    self.SafeDestroyQuestNpc(self, npcs.Npc12945Data.alias, 3)
    self.SafeDestroyQuestNpc(self, npcs.Npc1035Data.alias, 3)
    self.SafeDestroyQuestNpc(self, npcs.Npc1040Data.alias, 3)
    self.SafeDestroyQuestNpc(self, npcs.Npc1033Data.alias, 3)
    self.ActionSafeCall(self, function()
        self:NarratorOnlyTaskByData(datas.NarratorWithId1)
        self:ClearAllScaryThings()
        self:DisableMainPageWithConfig(false, "DisableActionPanel")
    end)
end

function Quest40090:OnSubFailed4009021(arg1)
    print("OnSubFailed4009021")
    self:FollowFail()
end

function Quest40090:OnSubStart4009022(arg1)
    print("OnSubStart4009022")
end

function Quest40090:OnSubFinish4009022(arg1)
    print("OnSubFinish4009022")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1040Data.alias)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CallDelay(self, 1.6, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
        questNpcActor:ClearNpcFollowTask()
        questNpcActor:DoFreeStyle(1040)
        self:NarratorNoSafeFinish(datas.Sayu1_1, function()
            print(datas.NarratorTag)
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
            self:NpcRunToTaskEasy(questNpcActor, {x = -2775.134, y = 226.8865, z = -4493.221}, function(arg1, arg2)
                local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
                local pos = questNpcActor:GetPos()
                local n = actorUtils.GetAvatarPos() - pos
                questNpcActor:SteerToTask(n, 1, true, true)
            end)

            self:NarratorNoSafeFinish(datas.Sayu1_2, function()
                local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
                self:SayuFollow()
                self:NpcResetForceAvatarWalk(questNpcActor)
                datas.NarratorTag = 0
            end)
        end)
    end)

    self.CallDelay(self, 1.5, function()
        local posRelatedNpc = self:PosRelatedNpc(1.3, 0, 1.1, npcs.Npc1040Data.alias)
        local n = math.random(10, 170)
        self:CreateLocalGadget(70290737, "1", posRelatedNpc, {x = 0.0, y = n, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 2.1, function()
        local posRelatedPlayer = self:PosRelatedPlayer(2.86, 0, 1.86)
        local n = math.random(190, 350)
        self:CreateLocalGadget(70290752, "2", posRelatedPlayer, {x = 0.0, y = n, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 2.8, function()
        local posRelatedNpc = self:PosRelatedNpc(-1.86, 0, 2.86, npcs.Npc1040Data.alias)
        local n = math.random(10, 170)
        self:CreateLocalGadget(70290752, "3", posRelatedNpc, {x = 0.0, y = n, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 3.6, function()
        local posRelatedNpc = self:PosRelatedNpc(1.33, 0, -1.65, npcs.Npc1040Data.alias)
        local n = math.random(190, 350)
        self:CreateLocalGadget(70290737, "4", posRelatedNpc, {x = 0.0, y = n, z = 0.0}, 3, nil, nil, 0, true)
    end)
end

function Quest40090:OnSubStart4009023(arg1)
    print("OnSubStart4009023")
end

function Quest40090:OnSubFinish4009023(arg1)
    print("OnSubFinish4009023")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1040Data.alias)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CreateQuestNpc(self, arg1, npcs.Npc13012Data.id)
    self.GetQuestNpcActor(self, npcs.Npc13012Data.alias):PlayAudio("Play_sfx_quest_EQ_DaZhuanKuai_cat_foley")
    self.NarratorNoSafeFinish(self, datas.Sayu2_1, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
        questNpcActor:ClearNpcFollowTask()
        questNpcActor:DoFreeStyle(1050)
        self:CallDelay(5, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
            local pos = questNpcActor:GetPos()
            local n = datas.ShrinePos - pos
            questNpcActor:SteerToTask(n, 1, true, true)
            self:CallDelay(1.1, function()
                self:GetQuestNpcActor(npcs.Npc1040Data.alias):DoFreeStyle(1190)
            end)
        end)

        self:NarratorNoSafeFinish(datas.Sayu2_2, function()
            self:GetQuestNpcActor(npcs.Npc13012Data.alias):PlayAudio("Play_vo_creature_cat_common")
            self:NarratorNoSafeFinish(datas.Sayu2_3, function()
                local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
                self:NpcResetForceAvatarWalk(questNpcActor)
                datas.NarratorTag = 0
                self:SayuFollow()
            end)
        end)
    end)
end

function Quest40090:OnSubStart4009024(arg1)
    print("OnSubStart4009024")
end

function Quest40090:OnSubFinish4009024(arg1)
    print("OnSubFinish4009024")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1040Data.alias)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.NarratorNoSafeFinish(self, datas.Sayu3_1, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
        self:NpcResetForceAvatarWalk(questNpcActor)
        datas.NarratorTag = 0
    end)

    self.CallDelay(self, 1, function()
        local posRelatedNpc = self:PosRelatedNpc(1, 1.5, 1.2, npcs.Npc1040Data.alias)
        self:GhostAkebia("1", posRelatedNpc)
    end)

    self.CallDelay(self, 2.5, function()
        local posRelatedNpc = self:PosRelatedNpc(1.6, 1.5, 0.8, npcs.Npc1040Data.alias)
        self:GhostAkebia("2", posRelatedNpc)
    end)

    self.CallDelay(self, 4, function()
        local posRelatedPlayer = self:PosRelatedPlayer(-1.2, 1.5, 0.6)
        self:GhostAkebia("3", posRelatedPlayer)
    end)

    self.CallDelay(self, 5.5, function()
        local posRelatedNpc = self:PosRelatedNpc(-0.3, 1.5, 1.1, npcs.Npc1040Data.alias)
        self:GhostAkebia("4", posRelatedNpc)
    end)

    self.CallDelay(self, 7, function()
        local posRelatedPlayer = self:PosRelatedPlayer(-1.3, 1.5, 2.1)
        self:GhostAkebia("5", posRelatedPlayer)
    end)

    self.CallDelay(self, 8.5, function()
        local posRelatedNpc = self:PosRelatedNpc(1.3, 1.5, -1.1, npcs.Npc1040Data.alias)
        self:GhostAkebia("6", posRelatedNpc)
    end)

    self.CallDelay(self, 10, function()
        local posRelatedNpc = self:PosRelatedNpc(-1.6, 1.5, -1.7, npcs.Npc1040Data.alias)
        self:GhostAkebia("7", posRelatedNpc)
    end)
end

function Quest40090:OnSubStart4009025(arg1)
    print("OnSubStart4009025")
end

function Quest40090:OnSubFinish4009025(arg1)
    print("OnSubFinish4009025")
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1040Data.alias)
    datas.NarratorTag = 1
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CallDelay(self, 1, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
        questNpcActor:ClearNpcFollowTask()
        local pos = questNpcActor:GetPos()
        local n = datas.ShadowPos - pos
        questNpcActor:SteerToTask(n, 1, true, true)
        self:CallDelay(1.1, function()
            self:GetQuestNpcActor(npcs.Npc1040Data.alias):DoFreeStyle(1190)
        end)
    end)

    self.EnterSceneLookCamera(self, {x = -2728.841, y = 233.008, z = -4478.661}, 0, 3, true, true)
    self.NarratorNoSafeFinish(self, datas.Sayu4_1, function()
        self:SayuFollow()
        self:NarratorNoSafeFinish(datas.Sayu4_2, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
            self:NpcResetForceAvatarWalk(questNpcActor)
            datas.NarratorTag = 0
        end)
    end)
end

function Quest40090:OnSubStart4009026(arg1)
    print("OnSubStart4009026")
end

function Quest40090:OnSubFinish4009026(arg1)
    print("OnSubFinish4009026")
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1040Data.alias)
    datas.NarratorTag = 1
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.NarratorNoSafeFinish(self, datas.Sayu5_1, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
        self:Scary5Active()
        questNpcActor:ClearNpcFollowTask()
        local n = {x = -2756.731, y = 226.1267, z = -4455.987} - questNpcActor:GetPos()
        questNpcActor:SteerToTask(n, 1, true, true)
        self:NarratorNoSafeFinish(datas.Sayu5_2, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
            self:NpcRunToTaskEasy(questNpcActor, {x = -2759.262, y = 226.8433, z = -4442.076}, function(arg1, arg2)
                local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
                local pos = questNpcActor:GetPos()
                local n = actorUtils.GetAvatarPos() - pos
                questNpcActor:SteerToTask(n, 1, true, true)
            end)

            self:NarratorNoSafeFinish(datas.Sayu5_3, function()
                local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
                self:NpcResetForceAvatarWalk(questNpcActor)
                self:SayuFollow()
                datas.NarratorTag = 0
            end)
        end)
    end)
end

function Quest40090:OnSubStart4009027(arg1)
    print("OnSubStart4009027")
end

function Quest40090:OnSubFinish4009027(arg1)
    print("OnSubFinish4009027")
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1040Data.alias)
    datas.NarratorTag = 1
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    questNpcActor:ClearNpcFollowTask()
    local pos = questNpcActor:GetPos()
    local n = datas.ShopPos1 - pos
    questNpcActor:SteerToTask(n, 1, true, true)
    self.CallDelay(self, 1.1, function()
        self:GetQuestNpcActor(npcs.Npc1040Data.alias):DoFreeStyle(1120)
    end)

    self.NarratorNoSafeFinish(self, datas.Sayu6_1, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
        actorMgr:CreateActorWithPos("Q40090Scary6_1", "Actor/Gadget/Q40090Scary6_1", 70900002, 0, {x = -2771.562, y = 223.9641, z = -4441.918}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
        self:SayuFollow()
        self:NpcResetForceAvatarWalk(questNpcActor)
        datas.NarratorTag = 0
    end)
end

function Quest40090:OnSubStart4009043(arg1)
    print("OnSubStart4009043")
end

function Quest40090:OnSubFinish4009043(arg1)
    print("OnSubFinish4009043")
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1040Data.alias)
    datas.NarratorTag = 1
    self.EnterSceneLookCamera(self, {x = -2772.542, y = 226.669, z = -4440.992}, 0, 3, true, true)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CreateShop2(self)
    self.CallDelay(self, 1, function()
        self:NarratorNoSafeFinish(datas.Sayu6_2, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
            actorMgr:CreateActorWithPos("Q40090Scary6_2", "Actor/Gadget/Q40090Scary6_2", 70900002, 0, {x = -2763.857, y = 225.716, z = -4436.412}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
            self:SayuFollow()
            self:NpcResetForceAvatarWalk(questNpcActor)
            datas.NarratorTag = 0
        end)

        questNpcActor:ClearNpcFollowTask()
        local pos = questNpcActor:GetPos()
        local n = datas.ShopPos2 - pos
        questNpcActor:SteerToTask(n, 1, true, true)
        self:CallDelay(1.1, function()
            self:GetQuestNpcActor(npcs.Npc1040Data.alias):DoFreeStyle(1190)
        end)
    end)
end

function Quest40090:OnSubStart4009044(arg1)
    print("OnSubStart4009044")
end

function Quest40090:OnSubFinish4009044(arg1)
    print("OnSubFinish4009044")
    self.EnterSceneLookCamera(self, {x = -2763.01, y = 227.511, z = -4436.944}, 0, 3, true, true)
    self.CallDelay(self, 1, function()
        self:NarratorOnlyTaskByData(datas.Sayu6_3)
    end)

    self.CreateShop3(self)
end

function Quest40090:OnSubStart4009028(arg1)
    print("OnSubStart4009028")
end

function Quest40090:OnSubFinish4009028(arg1)
    print("OnSubFinish4009028")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1040Data.alias)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CallDelay(self, 3, function()
        self:NarratorNoSafeFinish(datas.Sayu7_1, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1040Data.alias)
            self:NpcResetForceAvatarWalk(questNpcActor)
            datas.NarratorTag = 0
        end)
    end)

    self.CallDelay(self, 1, function()
        local posRelatedNpc = self:PosRelatedNpc(1, 1.5, 1.2, npcs.Npc1040Data.alias)
        self:GhostLantern("1", posRelatedNpc)
    end)

    self.CallDelay(self, 2.5, function()
        local posRelatedNpc = self:PosRelatedNpc(1.6, 1.5, 0.8, npcs.Npc1040Data.alias)
        self:GhostLantern("2", posRelatedNpc)
    end)

    self.CallDelay(self, 4, function()
        local posRelatedPlayer = self:PosRelatedPlayer(-1.2, 1.5, 0.6)
        self:GhostLantern("3", posRelatedPlayer)
    end)

    self.CallDelay(self, 5.5, function()
        local posRelatedNpc = self:PosRelatedNpc(-0.3, 1.5, 1.1, npcs.Npc1040Data.alias)
        self:GhostLantern("4", posRelatedNpc)
    end)

    self.CallDelay(self, 7, function()
        local posRelatedPlayer = self:PosRelatedPlayer(-1.3, 1.5, 2.1)
        self:GhostLantern("5", posRelatedPlayer)
    end)

    self.CallDelay(self, 8.5, function()
        local posRelatedNpc = self:PosRelatedNpc(1.3, 1.5, -1.1, npcs.Npc1040Data.alias)
        self:GhostLantern("6", posRelatedNpc)
    end)

    self.CallDelay(self, 10, function()
        local posRelatedNpc = self:PosRelatedNpc(-1.6, 1.5, -1.7, npcs.Npc1040Data.alias)
        self:GhostLantern("7", posRelatedNpc)
    end)
end

function Quest40090:OnSubStart4009030(arg1)
    print("OnSubStart4009030")
    self:CreateQuestNpc(arg1, npcs.Npc13101Data.id, 0)
    datas.NarratorTag = 0
    self:FollowPrepare()
    self:ActionSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1033Data.id, 0)
            arg1_2:TohmaFollow()
            arg1_2:DisableMainPageWithConfig(true, "DisableActionPanel")
        end)
    end)
end

function Quest40090:OnSubFinish4009030(arg1)
    print("OnSubFinish4009030")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:SafeDestroyQuestNpc(npcs.Npc12945Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1040Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1033Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId1)
        arg1:ClearAllScaryThings()
        arg1:DisableMainPageWithConfig(false, "DisableActionPanel")
    end)
end

function Quest40090:OnSubFailed4009030(arg1)
    print("OnSubFailed4009030")
    self:FollowFail()
end

function Quest40090:OnSubStart4009031(arg1)
    print("OnSubStart4009031")
end

function Quest40090:OnSubFinish4009031(arg1)
    print("OnSubFinish4009031")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1033Data.alias)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CallDelay(self, 1.6, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
        questNpcActor:ClearNpcFollowTask()
        questNpcActor:DoFreeStyle(1030)
        self:NarratorNoSafeFinish(datas.Tohma1_1, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
            self:TohmaFollow()
            self:NarratorNoSafeFinish(datas.Tohma1_2, function()
                local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
                self:NpcResetForceAvatarWalk(questNpcActor)
                datas.NarratorTag = 0
            end)
        end)
    end)

    self.CallDelay(self, 1.5, function()
        local posRelatedNpc = self:PosRelatedNpc(1.3, 0, 1.1, npcs.Npc1033Data.alias)
        local n = math.random(10, 170)
        self:CreateLocalGadget(70290737, "1", posRelatedNpc, {x = 0.0, y = n, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 2.1, function()
        local posRelatedPlayer = self:PosRelatedPlayer(2.86, 0, 1.86)
        local n = math.random(190, 350)
        self:CreateLocalGadget(70290752, "2", posRelatedPlayer, {x = 0.0, y = n, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 2.8, function()
        local posRelatedNpc = self:PosRelatedNpc(-1.86, 0, 2.86, npcs.Npc1033Data.alias)
        local n = math.random(10, 170)
        self:CreateLocalGadget(70290752, "3", posRelatedNpc, {x = 0.0, y = n, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 3.6, function()
        local posRelatedNpc = self:PosRelatedNpc(1.33, 0, -1.65, npcs.Npc1033Data.alias)
        local n = math.random(190, 350)
        self:CreateLocalGadget(70290737, "4", posRelatedNpc, {x = 0.0, y = n, z = 0.0}, 3, nil, nil, 0, true)
    end)
end

function Quest40090:OnSubStart4009032(arg1)
    print("OnSubStart4009032")
end

function Quest40090:OnSubFinish4009032(arg1)
    print("OnSubFinish4009032")
    datas.NarratorTag = 1
    local tbl = {}
    tbl.x = -2743.949
    tbl.y = 232.1268
    tbl.z = -4494.536
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1033Data.alias)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CreateQuestNpc(self, arg1, npcs.Npc13012Data.id)
    local v = self.GetQuestNpcActor(self, npcs.Npc13012Data.alias)
    questNpcActor:ClearNpcFollowTask()
    questNpcActor:DoFreeStyle(1190)
    v.PlayAudio(v, "Play_sfx_quest_EQ_DaZhuanKuai_cat_foley")
    self.NarratorNoSafeFinish(self, datas.Tohma2_1, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
        self:NpcRunToTaskEasy(questNpcActor, tbl, function(arg1, arg2)
            local pos = questNpcActor:GetPos()
            local n = datas.ShrinePos - pos
            questNpcActor:SteerToTask(n, 1, true, true)
            self:CallDelay(1.1, function()
                self:GetQuestNpcActor(npcs.Npc1033Data.alias):DoFreeStyle(1190)
            end)
        end)

        self:NarratorNoSafeFinish(datas.Tohma2_2, function()
            print("\230\137\152\233\169\172\229\142\187\231\140\171\230\151\129\232\190\1853")
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
            self:NpcRunToTaskEasy(questNpcActor, {x = -2738.842, y = 233.0724, z = -4493.389}, function(arg1, arg2)
                local pos = questNpcActor:GetPos()
                questNpcActor:SteerToTask(M.Euler2DirXZ({x = 0, y = 16.947, z = 0}), 1, true, true)
                this:CallDelay(1.1, function()
                    self:GetQuestNpcActor(npcs.Npc1033Data.alias):DoFreeStyle(1280)
                end)
            end)

            v:PlayAudio("Play_vo_creature_cat_common")
            self:NarratorNoSafeFinish(datas.Tohma2_3, function()
                self:NarratorNoSafeFinish(datas.Tohma2_4, function()
                    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
                    v:PlayAudio("Play_vo_creature_cat_common")
                    self:NarratorNoSafeFinish(datas.Tohma2_5, function()
                        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
                        self:NpcResetForceAvatarWalk(questNpcActor)
                        questNpcActor:DoFreeStateTrigger()
                        datas.NarratorTag = 0
                        self:CallDelay(1, function()
                            self:TohmaFollow()
                        end)
                    end)
                end)
            end)
        end)
    end)
end

function Quest40090:OnSubStart4009033(arg1)
    print("OnSubStart4009033")
end

function Quest40090:OnSubFinish4009033(arg1)
    print("OnSubFinish4009033")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1033Data.alias)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.NarratorNoSafeFinish(self, datas.Tohma3_1, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
        self:NpcResetForceAvatarWalk(questNpcActor)
        datas.NarratorTag = 0
    end)

    self.CallDelay(self, 1, function()
        local posRelatedNpc = self:PosRelatedNpc(1, 1.5, 1.2, npcs.Npc1033Data.alias)
        self:GhostAkebia("1", posRelatedNpc)
    end)

    self.CallDelay(self, 2.5, function()
        local posRelatedNpc = self:PosRelatedNpc(1.6, 1.5, 0.8, npcs.Npc1033Data.alias)
        self:GhostAkebia("2", posRelatedNpc)
    end)

    self.CallDelay(self, 4, function()
        local posRelatedPlayer = self:PosRelatedPlayer(-1.2, 1.5, 0.6)
        self:GhostAkebia("3", posRelatedPlayer)
    end)

    self.CallDelay(self, 5.5, function()
        local posRelatedNpc = self:PosRelatedNpc(-0.3, 1.5, 1.1, npcs.Npc1033Data.alias)
        self:GhostAkebia("4", posRelatedNpc)
    end)

    self.CallDelay(self, 7, function()
        local posRelatedPlayer = self:PosRelatedPlayer(-1.3, 1.5, 2.1)
        self:GhostAkebia("5", posRelatedPlayer)
    end)

    self.CallDelay(self, 8.5, function()
        local posRelatedNpc = self:PosRelatedNpc(1.3, 1.5, -1.1, npcs.Npc1033Data.alias)
        self:GhostAkebia("6", posRelatedNpc)
    end)

    self.CallDelay(self, 10, function()
        local posRelatedNpc = self:PosRelatedNpc(-1.6, 1.5, -1.7, npcs.Npc1033Data.alias)
        self:GhostAkebia("7", posRelatedNpc)
    end)
end

function Quest40090:OnSubStart4009034(arg1)
    print("OnSubStart4009034")
end

function Quest40090:OnSubFinish4009034(arg1)
    print("OnSubFinish4009034")
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1033Data.alias)
    datas.NarratorTag = 1
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CallDelay(self, 1, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
        questNpcActor:ClearNpcFollowTask()
        local pos = questNpcActor:GetPos()
        local n = datas.ShadowPos - pos
        questNpcActor:SteerToTask(n, 1, true, true)
        self:CallDelay(1.1, function()
            self:GetQuestNpcActor(npcs.Npc1033Data.alias):DoFreeStyle(1190)
        end)
    end)

    self.EnterSceneLookCamera(self, {x = -2728.841, y = 233.008, z = -4478.661}, 0, 3, true, true)
    self.NarratorNoSafeFinish(self, datas.Tohma4_1, function()
        self:TohmaFollow()
        self:NarratorNoSafeFinish(datas.Tohma4_2, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
            self:NpcResetForceAvatarWalk(questNpcActor)
            datas.NarratorTag = 0
        end)
    end)
end

function Quest40090:OnSubStart4009035(arg1)
    print("OnSubStart4009035")
end

function Quest40090:OnSubFinish4009035(arg1)
    print("OnSubFinish4009035")
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1033Data.alias)
    datas.NarratorTag = 1
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CallDelay(self, 3, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
        questNpcActor:ClearNpcFollowTask()
        questNpcActor:DoFreeStyle(1220)
    end)

    self.NarratorNoSafeFinish(self, datas.Tohma5_1, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
        self:Scary5Active()
        questNpcActor:ClearNpcFollowTask()
        local n = {x = -2756.731, y = 226.1267, z = -4455.987} - questNpcActor:GetPos()
        questNpcActor:SteerToTask(n, 1, true, true)
        self:NarratorNoSafeFinish(datas.Tohma5_2, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
            self:TohmaFollow()
            self:NpcResetForceAvatarWalk(questNpcActor)
            datas.NarratorTag = 0
        end)
    end)
end

function Quest40090:OnSubStart4009036(arg1)
    print("OnSubStart4009036")
end

function Quest40090:OnSubFinish4009036(arg1)
    print("OnSubFinish4009036")
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1033Data.alias)
    datas.NarratorTag = 1
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    questNpcActor.ClearNpcFollowTask(questNpcActor)
    self.NpcRunToTaskEasy(self, questNpcActor, {x = -2780.284, y = 224.617, z = -4432.039}, function(arg1, arg2)
        local pos = questNpcActor:GetPos()
        local n = datas.ShopPos1 - pos
        questNpcActor:SteerToTask(n, 1, true, true)
        self:CallDelay(1.1, function()
            self:GetQuestNpcActor(npcs.Npc1033Data.alias):DoFreeStyle(1230)
        end)
    end)

    self.NarratorNoSafeFinish(self, datas.Tohma6_1, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
        actorMgr:CreateActorWithPos("Q40090Scary6_1", "Actor/Gadget/Q40090Scary6_1", 70900002, 0, {x = -2771.562, y = 223.9641, z = -4441.918}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
        self:TohmaFollow()
        self:NpcResetForceAvatarWalk(questNpcActor)
        datas.NarratorTag = 0
    end)
end

function Quest40090:OnSubStart4009045(arg1)
    print("OnSubStart4009045")
end

function Quest40090:OnSubFinish4009045(arg1)
    print("OnSubFinish4009045")
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1033Data.alias)
    datas.NarratorTag = 1
    self.EnterSceneLookCamera(self, {x = -2772.542, y = 226.669, z = -4440.992}, 0, 3, true, true)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CreateShop2(self)
    self.CallDelay(self, 1, function()
        self:NarratorNoSafeFinish(datas.Tohma6_2, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
            actorMgr:CreateActorWithPos("Q40090Scary6_2", "Actor/Gadget/Q40090Scary6_2", 70900002, 0, {x = -2763.857, y = 225.716, z = -4436.412}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
            self:TohmaFollow()
            self:NpcResetForceAvatarWalk(questNpcActor)
            datas.NarratorTag = 0
        end)

        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
        questNpcActor:ClearNpcFollowTask()
        local pos = questNpcActor:GetPos()
        local n = datas.ShopPos2 - pos
        questNpcActor:SteerToTask(n, 1, true, true)
        self:CallDelay(1.1, function()
            self:GetQuestNpcActor(npcs.Npc1033Data.alias):DoFreeStyle(1190)
        end)
    end)
end

function Quest40090:OnSubStart4009046(arg1)
    print("OnSubStart4009046")
end

function Quest40090:OnSubFinish4009046(arg1)
    print("OnSubFinish4009046")
    self.CallDelay(self, 1, function()
        self:NarratorOnlyTaskByData(datas.Tohma6_3)
    end)

    self.EnterSceneLookCamera(self, {x = -2763.01, y = 227.511, z = -4436.944}, 0, 3, true, true)
    self.CreateShop3(self)
end

function Quest40090:OnSubStart4009037(arg1)
    print("OnSubStart4009037")
end

function Quest40090:OnSubFinish4009037(arg1)
    print("OnSubFinish4009037")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1033Data.alias)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CallDelay(self, 3, function()
        self:NarratorNoSafeFinish(datas.Tohma7_1, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1033Data.alias)
            self:NpcResetForceAvatarWalk(questNpcActor)
            datas.NarratorTag = 0
        end)
    end)

    self.CallDelay(self, 1, function()
        local posRelatedNpc = self:PosRelatedNpc(1, 1.5, 1.2, npcs.Npc1033Data.alias)
        self:GhostLantern("1", posRelatedNpc)
    end)

    self.CallDelay(self, 2.5, function()
        local posRelatedNpc = self:PosRelatedNpc(1.6, 1.5, 0.8, npcs.Npc1033Data.alias)
        self:GhostLantern("2", posRelatedNpc)
    end)

    self.CallDelay(self, 4, function()
        local posRelatedPlayer = self:PosRelatedPlayer(-1.2, 1.5, 0.6)
        self:GhostLantern("3", posRelatedPlayer)
    end)

    self.CallDelay(self, 5.5, function()
        local posRelatedNpc = self:PosRelatedNpc(-0.3, 1.5, 1.1, npcs.Npc1033Data.alias)
        self:GhostLantern("4", posRelatedNpc)
    end)

    self.CallDelay(self, 7, function()
        local posRelatedPlayer = self:PosRelatedPlayer(-1.3, 1.5, 2.1)
        self:GhostLantern("5", posRelatedPlayer)
    end)

    self.CallDelay(self, 8.5, function()
        local posRelatedNpc = self:PosRelatedNpc(1.3, 1.5, -1.1, npcs.Npc1033Data.alias)
        self:GhostLantern("6", posRelatedNpc)
    end)

    self.CallDelay(self, 10, function()
        local posRelatedNpc = self:PosRelatedNpc(-1.6, 1.5, -1.7, npcs.Npc1033Data.alias)
        self:GhostLantern("7", posRelatedNpc)
    end)
end

function Quest40090:OnSubStart4009004(arg1)
    print("OnSubStart4009004")
    self:CreateQuestNpcWithTrigger("Q4009004Trigger", 4009004, npcs.Npc1044Data.id, 0, 8)
    self:CreateQuestNpc(arg1, npcs.Npc12941Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12942Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12943Data.id, 0)
end

function Quest40090:OnSubFinish4009004(arg1)
    print("OnSubFinish4009004")
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12941Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12942Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12943Data.alias, 3)
    this:ClearNarratorTask()
end

function Quest40090:OnSubStart4009005(arg1)
    print("OnSubStart4009005")
    this:CreateQuestNpc(arg1, npcs.Npc12944Data.id, 1)
    actorMgr:CreateActorWithPos("Q40090Trigger", "Actor/Gadget/Q40090Trigger", 70900002, 0, {x = -2807.604, y = 200.642, z = -4602.214}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest40090:OnSubFinish4009005(arg1)
    print("OnSubFinish4009005")
end

function Quest40090:OnSubStart4009006(arg1)
    print("OnSubStart4009006")
    this:RequestInteraction(npcs.Npc12944Data.alias)
end

function Quest40090:OnSubFinish4009006(arg1)
    print("OnSubFinish4009006")
    this:SafeDestroyQuestNpc(npcs.Npc12944Data.alias, 3)
end

function Quest40090:OnSubStart4009007(arg1)
    print("OnSubStart4009007")
end

function Quest40090:OnSubFinish4009007(arg1)
    print("OnSubFinish4009007")
end

function Quest40090:OnSubStart4009008(arg1)
    print("OnSubStart4009008")
    this:CreateQuestNpc(arg1, npcs.Npc12944Data.id, 0)
    actorMgr:CreateActorWithPos("Q40090Trigger3", "Actor/Gadget/Q40090Trigger3", 70900002, 0, {x = -2806.894, y = 201.468, z = -4603.368}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest40090:OnSubFinish4009008(arg1)
    print("OnSubFinish4009008")
    this:SafeDestroyQuestNpc(npcs.Npc12944Data.alias, 3)
end

function Quest40090:OnSubStart4009009(arg1)
    print("OnSubStart4009009")
    actorMgr:CreateActorWithPos("Q40090Trigger1", "Actor/Gadget/Q40090Trigger1", 70900002, 0, {x = -2777.018, y = 227.3419, z = -4512.368}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    this:CreateQuestNpc(arg1, npcs.Npc1035Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12941Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1039Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12943Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12942Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1013Data.id, 0)
end

function Quest40090:OnSubFinish4009009(arg1)
    print("OnSubFinish4009009")
end

function Quest40090:OnSubStart4009010(arg1)
    print("OnSubStart4009010")
    this:RequestInteraction(npcs.Npc1044Data.alias)
end

function Quest40090:OnSubFinish4009010(arg1)
    print("OnSubFinish4009010")
    self:DestroyQuestNpcActor(npcs.Npc12941Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12942Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12943Data.alias, 3)
end

function Quest40090:OnSubStart4009011(arg1)
    print("OnSubStart4009011")
    actorMgr:CreateActorWithPos("Q40090Trigger2", "Actor/Gadget/Q40090Trigger2", 70900002, 0, {x = -2809.36, y = 224.101, z = -4451.293}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12276Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12277Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12278Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1013Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1033Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1035Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1039Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1040Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc1032Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc1033Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1220, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc1013Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc1039Data.alias):DoFreeStyle(1130, true, nil, true, true, false, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1044Data.alias)
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12276Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12277Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12278Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40090:OnSubFinish4009011(arg1)
    print("OnSubFinish4009011")
end

function Quest40090:OnSubStart4009012(arg1)
    print("OnSubStart4009012")
    this:CreateQuestNpc(arg1, npcs.Npc1057Data.id, 0)
    this:RequestInteraction(npcs.Npc1057Data.alias)
end

function Quest40090:OnSubFinish4009012(arg1)
    print("OnSubFinish4009012")
    this:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1033Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1040Data.alias, 3)
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:DestroyQuestNpcActor(npcs.Npc1057Data.alias, 3)
end

return Quest40090
